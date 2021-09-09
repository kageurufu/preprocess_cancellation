from preprocessor import preprocess_superslicer
import pathlib


gcode_path = pathlib.Path("../GCode")


def test_superslicer():
    with (gcode_path / "superslicer.gcode").open("r") as f:
        results = "".join(list(preprocess_superslicer(f))).split("\n")

    definitions = [r for r in results if r.startswith("DEFINE_OBJECT")]
    assert (
        "DEFINE_OBJECT NAME=cube_1_id_0_copy_0 CENTER=150.505357,155.5,0.0 POLYGON=[[148.005357,153.0],[148.005357,158.0],[153.005357,158.0],[153.005357,153.0]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_id_0_copy_1 CENTER=139.505357,155.5,0.0 POLYGON=[[137.005357,153.0],[137.005357,158.0],[142.005357,158.0],[142.005357,153.0]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cylinder_2_id_1_copy_0 CENTER=160.494644,148.580964,0.0 POLYGON=[[157.994644,146.081744],[157.994644,151.080184],[162.994644,151.080184],[162.994644,146.081744]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=union_3_id_2_copy_0 CENTER=144.505358,144.5,0.0 POLYGON=[[137.005358,142.0],[137.005358,147.0],[152.005358,147.0],[152.005358,142.0]]"
        in definitions
    )
