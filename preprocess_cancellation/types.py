from __future__ import annotations

import dataclasses
from typing import TYPE_CHECKING, NamedTuple

if TYPE_CHECKING:
    from .hulls import HullTracker


class Point(NamedTuple):
    x: float
    y: float


@dataclasses.dataclass
class KnownObject:
    name: str
    hull: HullTracker
    layer: int = -1
