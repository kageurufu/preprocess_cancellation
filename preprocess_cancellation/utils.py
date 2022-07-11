import re
from typing import Iterable, List, Tuple

from .types import Point


def boundingbox(pmin: Tuple[float, float], pmax: Tuple[float, float]) -> List[Point]:
    return [
        Point(pmin[0], pmin[1]),
        Point(pmin[0], pmax[1]),
        Point(pmax[0], pmax[1]),
        Point(pmax[0], pmin[1]),
    ]


def dump_coords(coords: Iterable[float]) -> str:
    return ",".join(f"{coord:0.3f}" for coord in coords)


def clean_id(oid: str) -> str:
    return re.sub(r"\W+", "_", oid).strip("_")
