from preprocessor import preprocess_superslicer, preprocess_cura, preprocess_ideamaker, preprocess_slicer
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


def test_prusaslicer():
    with (gcode_path / "prusaslicer.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = [r for r in results if r.startswith("DEFINE_OBJECT")]

    assert (
        "DEFINE_OBJECT NAME=cylinder_2_id_1_copy_0 CENTER=160.28496176470588,148.62539117647052 POLYGON=[[158.103,146.681],[158.103,150.479],[162.392,150.479],[162.392,146.681]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_id_0_copy_0 CENTER=150.49740677966105,155.5244194915255 POLYGON=[[148.11,153.105],[148.11,157.895],[152.9,157.895],[152.9,153.105]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_id_0_copy_1 CENTER=139.56280894308944,155.50433333333342 POLYGON=[[137.11,153.105],[137.11,157.895],[141.9,157.895],[141.9,153.105]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=union_3_id_2_copy_0 CENTER=144.53330746847755,144.50965664403486 POLYGON=[[137.11,142.105],[137.11,146.895],[151.9,146.895],[151.9,142.105]]"
        in definitions
    )

    assert results.count(f"START_CURRENT_OBJECT NAME=cylinder_2_id_1_copy_0") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=cylinder_2_id_1_copy_0") == 25

    assert results.count(f"START_CURRENT_OBJECT NAME=cube_1_id_0_copy_0") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=cube_1_id_0_copy_0") == 25

    assert results.count(f"START_CURRENT_OBJECT NAME=cube_1_id_0_copy_1") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=cube_1_id_0_copy_1") == 25

    assert results.count(f"START_CURRENT_OBJECT NAME=union_3_id_2_copy_0") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=union_3_id_2_copy_0") == 25


def test_slic3r():
    with (gcode_path / "slic3r.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = [r for r in results if r.startswith("DEFINE_OBJECT")]

    assert (
        "DEFINE_OBJECT NAME=cube_1_stl_id_0_copy_0 CENTER=99.9626785714286,83.53089285714285 POLYGON=[[97.72,81.22],[97.72,85.78],[102.28,85.78],[102.28,81.22]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_stl_id_0_copy_1 CENTER=99.96267857142858,116.53089285714285 POLYGON=[[97.72,114.22],[97.72,118.78],[102.28,118.78],[102.28,114.22]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cylinder_2_stl_id_1_copy_0 CENTER=99.96210256410258,94.51479914529911 POLYGON=[[97.732,92.227],[97.732,96.773],[102.268,96.773],[102.268,92.227]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=union_3_stl_id_2_copy_0 CENTER=99.89390416666672,105.502 POLYGON=[[92.72,103.22],[92.72,107.78],[107.28,107.78],[107.28,103.22]]"
        in definitions
    )

    assert results.count(f"START_CURRENT_OBJECT NAME=cube_1_stl_id_0_copy_0") == 16
    assert results.count(f"END_CURRENT_OBJECT NAME=cube_1_stl_id_0_copy_0") == 16

    assert results.count(f"START_CURRENT_OBJECT NAME=cube_1_stl_id_0_copy_1") == 16
    assert results.count(f"END_CURRENT_OBJECT NAME=cube_1_stl_id_0_copy_1") == 16

    assert results.count(f"START_CURRENT_OBJECT NAME=cylinder_2_stl_id_1_copy_0") == 16
    assert results.count(f"END_CURRENT_OBJECT NAME=cylinder_2_stl_id_1_copy_0") == 16

    assert results.count(f"START_CURRENT_OBJECT NAME=union_3_stl_id_2_copy_0") == 16
    assert results.count(f"END_CURRENT_OBJECT NAME=union_3_stl_id_2_copy_0") == 16


def test_cura():
    with (gcode_path / "cura.gcode").open("r") as f:
        results = "".join(list(preprocess_cura(f))).split("\n")

    definitions = [r for r in results if r.startswith("DEFINE_OBJECT")]

    assert (
        "DEFINE_OBJECT NAME=cylinder_2_stl CENTER=143.4647095354524,143.52087701711517 POLYGON=[[141.2,141.201],[141.2,145.799],[145.8,145.799],[145.8,141.201]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_stl CENTER=150.00620833333335,143.49660416666666 POLYGON=[[147.7,141.2],[147.7,145.8],[152.3,145.8],[152.3,141.2]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=union_3_stl CENTER=149.8384257425742,150.08154785478547 POLYGON=[[142.7,147.7],[142.7,152.3],[157.3,152.3],[157.3,147.7]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_stl_1 CENTER=150.03810952380962,151.51967142857143 POLYGON=[[147.7,147.305],[147.7,158.77],[152.3,158.77],[152.3,147.305]]"
        in definitions
    )

    assert results.count(f"START_CURRENT_OBJECT NAME=cylinder_2_stl") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=cylinder_2_stl") == 25

    assert results.count(f"START_CURRENT_OBJECT NAME=cube_1_stl") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=cube_1_stl") == 25

    assert results.count(f"START_CURRENT_OBJECT NAME=union_3_stl") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=union_3_stl") == 25

    assert results.count(f"START_CURRENT_OBJECT NAME=cube_1_stl_1") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=cube_1_stl_1") == 25


def test_ideamaker():
    with (gcode_path / "ideamaker.gcode").open("r") as f:
        results = "".join(list(preprocess_ideamaker(f))).split("\n")

    definitions = [r for r in results if r.startswith("DEFINE_OBJECT")]

    assert (
        "DEFINE_OBJECT NAME=test_bed_part1_3mf CENTER=112.03741131105392,102.47506512425024 POLYGON=[[109.701,100.194],[109.701,104.806],[114.299,104.806],[114.299,100.194]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=test_bed_part2_3mf CENTER=89.3684693877551,102.54416326530614 POLYGON=[[81.701,100.194],[81.701,104.806],[96.301,104.806],[96.301,100.194]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=test_bed_part0_3mf CENTER=102.99640909090908,102.46025 POLYGON=[[100.701,100.194],[100.701,104.806],[105.301,104.806],[105.301,100.194]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=test_bed_part0_1_3mf CENTER=117.90284444444448,99.725 POLYGON=[[-20.0,-20.0],[-20.0,104.806],[123.299,104.806],[123.299,-20.0]]"
        in definitions
    )

    assert results.count("START_CURRENT_OBJECT NAME=test_bed_part1_3mf") == 32
    assert results.count("END_CURRENT_OBJECT NAME=test_bed_part1_3mf") == 32

    assert results.count("START_CURRENT_OBJECT NAME=test_bed_part2_3mf") == 32
    assert results.count("END_CURRENT_OBJECT NAME=test_bed_part2_3mf") == 32

    assert results.count("START_CURRENT_OBJECT NAME=test_bed_part0_3mf") == 33
    assert results.count("END_CURRENT_OBJECT NAME=test_bed_part0_3mf") == 33

    assert results.count("START_CURRENT_OBJECT NAME=test_bed_part0_1_3mf") == 33
    assert results.count("END_CURRENT_OBJECT NAME=test_bed_part0_1_3mf") == 33
