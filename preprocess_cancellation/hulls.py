from __future__ import annotations

import logging
from typing import List, Optional, Set

from .types import Point
from .utils import boundingbox

logger = logging.getLogger(__name__)

try:
    import shapely.geometry

except ImportError:
    logger.info("Shapely not found, complex hulls disabled")
    shapely = None  # pylint: disable=invalid-name

except OSError:
    logger.exception("Failed to import shapely. Are you missing libgeos?")
    shapely = None  # pylint: disable=invalid-name


class HullTracker:
    def add_point(self, point: Point) -> None:  # pylint: disable=unused-argument
        ...

    def center(self) -> Optional[Point]:
        ...

    def exterior(self) -> Optional[List[Point]]:
        ...

    @classmethod
    def create(cls, use_shapely: bool = True) -> HullTracker:
        if use_shapely and shapely is not None:
            return ShapelyHullTracker()
        return SimpleHullTracker()


class SimpleHullTracker(HullTracker):
    def __init__(self) -> None:
        self.xmin = 999999.0
        self.ymin = 999999.0
        self.xmax = -999999.0
        self.ymax = -999999.0

        self.count_points = 0
        self.xsum = 0.0
        self.ysum = 0.0

    def add_point(self, point: Point) -> None:
        self.xsum += point.x
        self.ysum += point.y
        self.count_points += 1

        if point.x < self.xmin:
            self.xmin = point.x
        if point.y < self.ymin:
            self.ymin = point.y
        if point.x > self.xmax:
            self.xmax = point.x
        if point.y > self.ymax:
            self.ymax = point.y

    def center(self) -> Optional[Point]:
        if not self.count_points:
            return None

        return Point(
            (self.xmax + self.xmin) / 2,
            (self.ymax + self.ymin) / 2,
        )

    def exterior(self) -> Optional[List[Point]]:
        if not self.count_points:
            return None

        return boundingbox((self.xmin, self.ymin), (self.xmax, self.ymax))


class ShapelyHullTracker(HullTracker):
    def __init__(self) -> None:
        self.pos = None
        self.points: Set[Point] = set()

    def add_point(self, point: Point) -> None:
        self.points.add(point)

    def center(self) -> Optional[Point]:
        if not self.points:
            return None

        return Point(
            (max(p[0] for p in self.points) + min(p[0] for p in self.points)) / 2,
            (max(p[1] for p in self.points) + min(p[1] for p in self.points)) / 2,
        )

    def exterior(self) -> Optional[List[Point]]:
        if not self.points:
            return None

        return [
            Point(*coord)
            for coord in shapely.geometry.MultiPoint(list(self.points))  # pylint: disable=no-member
            .convex_hull.simplify(0.02, preserve_topology=False)
            .exterior.coords
        ]
