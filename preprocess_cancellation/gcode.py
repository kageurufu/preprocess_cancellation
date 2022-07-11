import json
from typing import Collection, Dict, Generator, Tuple

from .__version__ import __version__
from .types import KnownObject
from .utils import dump_coords

HEADER_MARKER = f"; Pre-Processed for Cancel-Object support by preprocess_cancellation v{__version__}\n"


def parse_gcode(line: str) -> Tuple[str, Dict[str, str]]:
    # drop comments
    line = line.split(";", maxsplit=1)[0]
    command, *params = line.strip().split()
    parsed = {}
    for param in params:
        if "=" in param:
            key, value = param.split("=", maxsplit=1)
            parsed.update({key: value})
        else:
            parsed.update({param[0].upper(): param[1:]})
    return command, parsed


def exclude_object_header(known_objects: Collection[KnownObject]) -> Generator[str, None, None]:
    yield "\n\n"
    yield HEADER_MARKER
    yield f"; {len(known_objects)} known objects\n"

    for known_object in known_objects:
        yield from exclude_object_define(known_object)


def exclude_object_define(known_object: KnownObject) -> Generator[str, None, None]:
    yield f"EXCLUDE_OBJECT_DEFINE NAME={known_object.name}"
    center = known_object.hull.center()
    if center:
        yield f" CENTER={dump_coords(center)}"
    polygon = known_object.hull.exterior()
    if polygon:
        yield f" POLYGON={json.dumps(polygon, separators=(',', ':'))}"
    yield "\n"


def exclude_object_start(object_name: str) -> Generator[str, None, None]:
    yield f"EXCLUDE_OBJECT_START NAME={object_name}\n"


def exclude_object_end(object_name: str) -> Generator[str, None, None]:
    yield f"EXCLUDE_OBJECT_END NAME={object_name}\n"
