import json

from .__version__ import __version__
from .types import KnownObject
from .utils import dump_coords

HEADER_MARKER = f"; Pre-Processed for Cancel-Object support by preprocess_cancellation v{__version__}\n"


def parse_gcode(line):
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


def exclude_object_header(object_count):
    yield "\n\n"
    yield HEADER_MARKER
    yield f"; {object_count} known objects\n"


def exclude_object_define(known_object: KnownObject):
    yield f"EXCLUDE_OBJECT_DEFINE NAME={known_object.name}"
    if known_object.hull:
        yield f" CENTER={dump_coords(known_object.hull.center())}"
        yield f" POLYGON={json.dumps(known_object.hull.exterior(), separators=(',', ':'))}"
    yield "\n"


def exclude_object_start(object_name):
    yield f"EXCLUDE_OBJECT_START NAME={object_name}\n"


def exclude_object_end(object_name):
    yield f"EXCLUDE_OBJECT_END NAME={object_name}\n"
