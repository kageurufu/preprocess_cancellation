import sys
from typing import List, Union


class LayerFilter:
    def __init__(self, filters: str):
        self.ranges = [self.parse_range_string(f) for f in filters.split(",")]

    @staticmethod
    def parse_range_string(filters: str) -> Union[List[int], range]:
        if all(c.isdigit() for c in filters):
            return [int(filters)]

        if filters == "*":
            return range(0, sys.maxsize)

        start = 0
        stop = 1
        step = 1

        if filters.startswith("*"):
            start = 0
            stop = sys.maxsize

        if "/" in filters:
            filters, right = filters.split("/", 1)
            step = int(right)

        if "-" in filters:
            left, right = filters.split("-", 1)
            start = int(left or "0")
            stop = int(right) + 1 if right else int(sys.maxsize)

        return range(start, stop, step)

    def __call__(self, layer: int) -> bool:
        return any(layer in tested_range for tested_range in self.ranges)
