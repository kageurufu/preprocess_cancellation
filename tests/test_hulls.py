import math

from preprocess_cancellation.hulls import SimpleHullTracker
from preprocess_cancellation.types import Point


def test_plain_hulls_simple():
    hull_tracker = SimpleHullTracker()
    hull_tracker.add_point(Point(0.0, 0.0))
    hull_tracker.add_point(Point(0.0, 1.0))
    hull_tracker.add_point(Point(1.0, 1.0))
    hull_tracker.add_point(Point(1.0, 0.0))

    assert hull_tracker.exterior() == [(0.0, 0.0), (0.0, 1.0), (1.0, 1.0), (1.0, 0.0)]
    assert hull_tracker.center() == (0.5, 0.5)


def test_plain_hulls_rhombus():
    hull_tracker = SimpleHullTracker()

    hull_tracker.add_point(Point(0.0, 5.0))
    hull_tracker.add_point(Point(5.0, 10.0))
    hull_tracker.add_point(Point(10.0, 5.0))
    hull_tracker.add_point(Point(5.0, 0.0))

    assert hull_tracker.exterior() == [(0.0, 0.0), (0.0, 10.0), (10.0, 10.0), (10.0, 0.0)]
    assert hull_tracker.center() == (5.0, 5.0)


def test_plain_hulls_circle():
    hull_tracker = SimpleHullTracker()
    center = Point(5.0, 5.0)

    for i in range(0, 360, 10):
        hull_tracker.add_point(
            Point(
                center.x + 5 * math.cos(math.radians(i)),
                center.y + 5 * math.sin(math.radians(i)),
            )
        )

    assert hull_tracker.exterior() == [(0.0, 0.0), (0.0, 10.0), (10.0, 10.0), (10.0, 0.0)]
    assert hull_tracker.center() == (5.0, 5.0)
