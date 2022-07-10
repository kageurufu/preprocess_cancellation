import re
from typing import List

from .types import Point


def boundingbox(pmin: Point, pmax: Point):
    return [
        (pmin[0], pmin[1]),
        (pmin[0], pmax[1]),
        (pmax[0], pmax[1]),
        (pmax[0], pmin[1]),
    ]


def dump_coords(coords: List[float]) -> str:
    return ",".join(map("{:0.3f}".format, coords))


def clean_id(id):
    return re.sub(r"\W+", "_", id).strip("_")
