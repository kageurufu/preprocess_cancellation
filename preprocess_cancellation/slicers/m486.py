import io
import logging
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

logger = logging.getLogger(__name__)


def preprocess_m486_to_klipper(
    infile: io.TextIOBase,
    *,
    use_shapely: bool = True,
    layer_filter: LayerFilter,
) -> Generator[str, None, None]:
    known_objects: Dict[str, KnownObject] = {}
    current_object: Optional[KnownObject] = None

    for line in infile:

        if line.startswith("M486"):
            _, params = parse_gcode(line)
            if "T" in params:
                for i in range(-1, int(params["T"])):
                    logger.info("Found object %s", i)
                    known_objects[f"{i}"] = KnownObject(
                        f"{i}",
                        HullTracker.create(use_shapely=use_shapely),
                    )

            elif "S" in params:
                current_object = known_objects[params["S"]]
                current_object.layer += 1

        if current_object and layer_filter(current_object.layer) and line.strip().lower().startswith("g"):
            _, params = parse_gcode(line)
            if float(params.get("E", -1)) > 0 and "X" in params and "Y" in params:
                x = float(params["X"])
                y = float(params["Y"])
                current_object.hull.add_point(Point(x, y))

    infile.seek(0)
    current_object = None
    for line in infile:
        if line.strip() and not line.startswith(";"):
            yield from exclude_object_header(
                [known_object for known_object in known_objects.values() if known_object.name != "-1"]
            )

        yield line

        if line.strip() and not line.startswith(";"):
            break

    for line in infile:
        if line.upper().startswith("M486"):
            _, params = parse_gcode(line)

            if "S" in params:
                if current_object:
                    yield from exclude_object_end(current_object.name)
                    current_object = None

                if params["S"] != "-1":
                    current_object = known_objects[params["S"]]
                    yield from exclude_object_start(current_object.name)

            yield "; "  # Comment out the original M486 lines

        yield line
