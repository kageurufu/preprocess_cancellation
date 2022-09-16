import io
from typing import Dict, Generator, Optional

from preprocess_cancellation.layers import LayerFilter

from ..gcode import (
    exclude_object_end,
    exclude_object_header,
    exclude_object_start,
    parse_gcode,
)
from ..hulls import HullTracker
from ..types import KnownObject, Point
from ..utils import clean_id


def preprocess_cura_to_klipper(
    infile: io.TextIOBase,
    *,
    use_shapely: bool = True,
    layer_filter: LayerFilter,
) -> Generator[str, None, None]:
    known_objects: Dict[str, KnownObject] = {}
    current_object: Optional[KnownObject] = None
    last_time_elapsed: Optional[str] = None

    # iterate the file twice, to be able to inject the header markers
    for line in infile:
        if line.startswith(";MESH:"):
            object_name = line.split(":", maxsplit=1)[1].strip()

            if object_name == "NONMESH":
                continue

            if object_name not in known_objects:
                known_objects[object_name] = KnownObject(
                    clean_id(object_name),
                    HullTracker.create(use_shapely=use_shapely),
                )

            current_object = known_objects[object_name]
            current_object.layer += 1

        if current_object and layer_filter(current_object.layer) and line.strip().lower().startswith("g"):
            _, params = parse_gcode(line)
            if float(params.get("E", -1)) > 0 and "X" in params and "Y" in params:
                x = float(params["X"])
                y = float(params["Y"])
                current_object.hull.add_point(Point(x, y))

        if line.startswith(";TIME_ELAPSED:"):
            last_time_elapsed = line

    infile.seek(0)
    for line in infile:
        if line.strip() and not line.startswith(";"):
            yield from exclude_object_header(known_objects.values())

        yield line

        if line.strip() and not line.startswith(";"):
            break

    # Inject custom marker

    current_object = None
    for line in infile:
        yield line

        if line.startswith(";MESH:"):
            if current_object:
                yield from exclude_object_end(current_object.name)
                current_object = None

            mesh = line.split(":", maxsplit=1)[1].strip()
            if mesh == "NONMESH":
                continue

            current_object = known_objects[mesh]
            yield from exclude_object_start(current_object.name)

        if line == last_time_elapsed and current_object:
            yield from exclude_object_end(current_object.name)
            current_object = None

    if current_object:
        yield from exclude_object_end(current_object.name)
