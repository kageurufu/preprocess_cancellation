import logging
from typing import List, Set

from .types import Point
from .utils import boundingbox

logger = logging.getLogger(__name__)


class HullTracker:
    def add_point(self, point: Point):
        ...

    def center(self) -> Point:
        ...

    def exterior(self) -> List[Point]:
        ...

    @classmethod
    def create(cls, use_shapely=True):
        if use_shapely and ShapelyHullTracker is not None:
            return ShapelyHullTracker()
        return SimpleHullTracker()


class SimpleHullTracker(HullTracker):
    def __init__(self) -> None:
        self.xmin = 999999
        self.ymin = 999999
        self.xmax = -999999
        self.ymax = -999999

        self.count_points = 0
        self.xsum = 0
        self.ysum = 0

    def add_point(self, point: Point):
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

    def center(self):
        if not self.count_points:
            return

        return Point(
            (self.xmax + self.xmin) / 2,
            (self.ymax + self.ymin) / 2,
        )

    def exterior(self):
        if not self.count_points:
            return

        return boundingbox((self.xmin, self.ymin), (self.xmax, self.ymax))


ShapelyHullTracker = None
try:
    import shapely.geometry

except ImportError:
    logger.info("Shapely not found, complex hulls disabled")

except OSError:
    logger.exception("Failed to import shapely. Are you missing libgeos?")

else:

    class ShapelyHullTracker(HullTracker):
        def __init__(self):
            self.pos = None
            self.points: Set[Point] = set()

        def add_point(self, point: Point):
            self.points.add(point)

        def center(self):
            if not self.points:
                return

            return Point(
                (max(p[0] for p in self.points) + min(p[0] for p in self.points)) / 2,
                (max(p[1] for p in self.points) + min(p[1] for p in self.points)) / 2,
            )

        def exterior(self):
            if not self.points:
                return

            exterior_coords = list(
                shapely.geometry.MultiPoint(list(self.points))
                .convex_hull.simplify(0.02, preserve_topology=False)
                .exterior.coords
            )
            return exterior_coords
