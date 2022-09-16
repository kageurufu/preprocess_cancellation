import math

import pytest

from preprocess_cancellation.hulls import ShapelyHullTracker
from preprocess_cancellation.types import Point

try:
    import shapely.geometry  # pylint: disable=unused-import
except ImportError:
    pytest.skip("Requires shapely installed", allow_module_level=True)
except OSError:
    pytest.skip("Requires libgeos installed", allow_module_level=True)


def test_shapely_hulls_simple():
    hull_tracker = ShapelyHullTracker()

    hull_tracker.add_point(Point(0.0, 0.0))
    hull_tracker.add_point(Point(0.0, 1.0))
    hull_tracker.add_point(Point(1.0, 1.0))
    hull_tracker.add_point(Point(1.0, 0.0))

    assert hull_tracker.exterior() == [(0.0, 0.0), (0.0, 1.0), (1.0, 1.0), (1.0, 0.0), (0.0, 0.0)]
    assert hull_tracker.center() == (0.5, 0.5)


def test_shapely_hulls_rhombus():
    hull_tracker = ShapelyHullTracker()

    hull_tracker.add_point(Point(0.0, 5.0))
    hull_tracker.add_point(Point(5.0, 10.0))
    hull_tracker.add_point(Point(10.0, 5.0))
    hull_tracker.add_point(Point(5.0, 0.0))

    assert hull_tracker.exterior() == [(5.0, 0.0), (0.0, 5.0), (5.0, 10.0), (10.0, 5.0), (5.0, 0.0)]
    assert hull_tracker.center() == (5.0, 5.0)


def test_shapely_hulls_circle():
    hull_tracker = ShapelyHullTracker()
    center = Point(5.0, 5.0)

    for i in range(0, 360, 1):
        hull_tracker.add_point(
            Point(
                center.x + 5 * math.cos(math.radians(i)),
                center.y + 5 * math.sin(math.radians(i)),
            )
        )

    # Yeah, its approxamitely a circle? All points are within 0.1mm of the expected circle
    for x, y in hull_tracker.exterior():
        assert 4.9 <= math.sqrt((5 - x) ** 2 + (5 - y) ** 2) <= 5.1
    assert hull_tracker.center() == (5.0, 5.0)
