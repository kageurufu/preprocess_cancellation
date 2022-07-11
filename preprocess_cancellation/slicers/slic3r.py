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
from ..utils import clean_id

logger = logging.getLogger(__name__)


def preprocess_slicer_to_klipper(
    infile: io.TextIOBase, *, use_shapely: bool = True, layer_filter: LayerFilter
) -> Generator[str, None, None]:
    known_objects: Dict[str, KnownObject] = {}
    current_object: Optional[KnownObject] = None

    for line in infile:
        if line.startswith("; printing object "):
            object_id = line.split("printing object")[1].strip()
            if object_id not in known_objects:
                logger.info("Found object %s", clean_id(object_id))
                known_objects[object_id] = KnownObject(
                    clean_id(object_id),
                    HullTracker.create(use_shapely=use_shapely),
                )

            current_object = known_objects[object_id]
            current_object.layer += 1

        if line.startswith("; stop printing object "):
            current_object = None

        if current_object and layer_filter(current_object.layer) and line.strip().lower().startswith("g"):
            _command, params = parse_gcode(line)
            if float(params.get("E", -1)) > 0 and "X" in params and "Y" in params:
                x = float(params["X"])
                y = float(params["Y"])
                current_object.hull.add_point(Point(x, y))

    infile.seek(0)
    for line in infile:
        yield line
        if line.strip() and not line.startswith(";"):
            break

    yield from exclude_object_header(known_objects.values())

    for line in infile:
        yield line

        if line.startswith("; printing object "):
            yield from exclude_object_start(known_objects[line.split("printing object")[1].strip()].name)

        if line.startswith("; stop printing object "):
            yield from exclude_object_end(known_objects[line.split("printing object")[1].strip()].name)
