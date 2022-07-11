import io
import json
import math
import pathlib

import pytest

from preprocess_cancellation import preprocess_stream
from preprocess_cancellation.gcode import parse_gcode
from preprocess_cancellation.layers import LayerFilter
from preprocess_cancellation.types import Point


@pytest.mark.parametrize("slicer", ["m486", "cura", "superslicer", "ideamaker"])
@pytest.mark.parametrize("use_shapely", [True, False])
@pytest.mark.parametrize(
    ("file", "layers", "expected_size"),
    [
        ("inverted_pyramid", "0", (10, 10)),
        ("inverted_pyramid", "*/5", (28, 28)),
        ("inverted_pyramid", "*", (30, 30)),
    ],
)
def test_params(
    slicer: str,
    use_shapely: bool,
    file: str,
    layers: str,
    expected_size: Point,
):
    gcode = pathlib.Path(f"GCode/{file}/{slicer}.gcode")
    assert gcode.is_file(), f"Missing {gcode}"

    outbuf = io.StringIO()

    preprocess_stream(gcode.open(encoding="utf-8"), outbuf, use_shapely=use_shapely, layer_filter=LayerFilter(layers))

    outbuf.seek(0)
    definitions = [line for line in outbuf if line.startswith("EXCLUDE_OBJECT_DEFINE")]

    assert len(definitions) == 2, definitions
    for definition in definitions:
        _, params = parse_gcode(definition)
        points = json.loads(params["POLYGON"])

        xmin = min(point[0] for point in points)
        xmax = max(point[0] for point in points)
        ymin = min(point[1] for point in points)
        ymax = max(point[1] for point in points)

        assert (math.ceil(xmax - xmin), math.ceil(ymax - ymin)) == expected_size
