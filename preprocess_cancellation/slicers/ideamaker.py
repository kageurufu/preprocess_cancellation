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


def preprocess_ideamaker_to_klipper(
    infile: io.TextIOBase,
    *,
    use_shapely: bool = True,
    layer_filter: LayerFilter,
) -> Generator[str, None, None]:
    # This one is funnier
    # theres blocks like this, we can grab all these to get the names and ideamaker's IDs for them.
    #   ;PRINTING: test_bed_part0.3mf
    #   ;PRINTING_ID: 0

    known_objects: Dict[str, KnownObject] = {}
    current_object: Optional[KnownObject] = None

    for line in infile:
        if line.startswith(";PRINTING:"):
            name = line.split(":")[1].strip()
            id_line = next(infile, "")
            assert id_line.startswith(";PRINTING_ID:")
            oid = id_line.split(":")[1].strip()
            # Ignore the internal non-object meshes
            if oid == "-1":
                continue

            if oid not in known_objects:
                logger.info("Found object %s", clean_id(name))
                known_objects[oid] = KnownObject(clean_id(name), HullTracker.create(use_shapely=use_shapely))

            current_object = known_objects[oid]
            current_object.layer += 1

        if current_object and layer_filter(current_object.layer) and line.strip().lower().startswith("g"):
            _command, params = parse_gcode(line)
            if float(params.get("E", -1)) > 0 and "X" in params and "Y" in params:
                x = float(params["X"])
                y = float(params["Y"])
                current_object.hull.add_point(Point(x, y))

    logger.debug("Finished initial scan, generating output file")
    infile.seek(0)

    current_object = None
    for line in infile:
        if line.strip() and not line.startswith(";"):
            yield from exclude_object_header(known_objects.values())

        yield line

        if line.strip() and not line.startswith(";"):
            break

    for line in infile:
        yield line

        if line.startswith(";PRINTING_ID:"):
            printing_id = line.split(":")[1].strip()
            if current_object:
                yield from exclude_object_end(current_object.name)
                current_object = None
            if printing_id == "-1":
                continue
            current_object = known_objects[printing_id]
            yield from exclude_object_start(current_object.name)

        if line == ";REMAINING_TIME: 0\n" and current_object:
            yield from exclude_object_end(current_object.name)
            current_object = None

    if current_object:
        yield from exclude_object_end(current_object.name)
