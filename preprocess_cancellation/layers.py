import sys


class LayerFilter:
    def __init__(self, filters: str):
        self.ranges = [self.parse_range_string(f) for f in filters.split(",")]

    @staticmethod
    def parse_range_string(f: str) -> range:
        if all(c.isdigit() for c in f):
            return [int(f)]

        if f == "*":
            return range(0, sys.maxsize)

        start = None
        stop = None
        step = 1

        if f.startswith("*"):
            start = 0
            stop = sys.maxsize

        if "/" in f:
            f, right = f.split("/", 1)
            step = int(right)

        if "-" in f:
            left, right = f.split("-", 1)
            start = int(left or "0")
            stop = int(right) + 1 if right else int(sys.maxsize)

        return range(start, stop, step)

    def __call__(self, layer: int):
        return any(layer in tested_range for tested_range in self.ranges)
