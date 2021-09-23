from re import sub
import subprocess
import pathlib
import sys
from preprocess_cancellation import preprocess_cura, preprocess_ideamaker, preprocess_m486, preprocess_slicer

gcode_path = pathlib.Path("./GCode")


def test_cli_shapely():
    """
    Ensure the preprocesor does not crash
    """
    try:
        command = [
            sys.executable,
            "./preprocess_cancellation.py",
            "-o",
            ".testing",
            *gcode_path.glob("*.gcode"),
        ]
        with subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE) as proc:
            proc.wait()
            assert proc.returncode == 0
    finally:
        for testing_file in gcode_path.glob("*.testing.gcode"):
            testing_file.unlink()


def test_cli_without_shapely():
    """
    Ensure the preprocesor does not crash
    """
    try:
        command = [
            sys.executable,
            "./preprocess_cancellation.py",
            "--disable-shapely",
            "-o",
            ".testing",
            *gcode_path.glob("*.gcode"),
        ]
        with subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE) as proc:
            proc.wait()
            assert proc.returncode == 0
    finally:
        for testing_file in gcode_path.glob("*.testing.gcode"):
            testing_file.unlink()


def test_m486():
    with (gcode_path / "m486.gcode").open("r") as f:
        results = "".join(list(preprocess_m486(f))).split("\n")

    definitions = [r for r in results if r.startswith("DEFINE_OBJECT")]

    assert (
        "DEFINE_OBJECT NAME=0 CENTER=160.285,148.625 POLYGON=[[160.513,146.681],[160.268,146.693],[159.931,146.769],[158.514,147.252],[158.179,148.01],[158.103,148.462],[158.127,148.938],[158.245,149.4],[158.392,149.726],[159.679,150.294],[160.055,150.429],[160.475,150.479],[161.126,150.446],[161.461,150.301],[161.846,149.914],[162.077,149.631],[162.233,149.348],[162.342,149.02],[162.392,148.641],[162.371,148.283],[162.222,147.623],[161.633,147.062],[161.313,146.869],[161.128,146.798],[160.938,146.734],[160.513,146.681]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=1 CENTER=150.497,155.524 POLYGON=[[148.11,153.105],[148.11,157.895],[152.9,157.895],[152.84,153.105],[148.11,153.105]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=2 CENTER=139.563,155.504 POLYGON=[[137.11,153.105],[137.11,157.895],[141.9,157.895],[141.9,153.105],[137.11,153.105]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=3 CENTER=144.533,144.510 POLYGON=[[137.11,142.105],[137.11,146.895],[151.9,146.895],[151.9,142.105],[137.11,142.105]]"
        in definitions
    )

    assert results.count(f"START_CURRENT_OBJECT NAME=0") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=0") == 25

    assert results.count(f"START_CURRENT_OBJECT NAME=1") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=1") == 25

    assert results.count(f"START_CURRENT_OBJECT NAME=2") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=2") == 25

    assert results.count(f"START_CURRENT_OBJECT NAME=3") == 25
    assert results.count(f"END_CURRENT_OBJECT NAME=3") == 25


def test_superslicer():
    with (gcode_path / "superslicer.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = [r for r in results if r.startswith("DEFINE_OBJECT")]

    assert (
        "DEFINE_OBJECT NAME=cube_1_id_0_copy_0 CENTER=150.515,155.476 POLYGON=[[148.215,153.21],[148.215,157.79],[152.795,157.79],[152.735,153.21],[148.215,153.21]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_id_0_copy_1 CENTER=139.578,155.479 POLYGON=[[137.215,153.21],[137.215,157.79],[141.795,157.79],[141.795,153.21],[137.215,153.21]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=union_3_id_2_copy_0 CENTER=144.198,144.526 POLYGON=[[137.215,142.21],[137.215,146.79],[151.795,146.79],[151.795,142.21],[137.215,142.21]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cylinder_2_id_1_copy_0 CENTER=160.152,148.483 POLYGON=[[160.207,146.625],[159.764,146.745],[159.4,146.942],[158.346,147.789],[158.23,148.24],[158.205,148.581],[158.567,149.29],[158.862,149.692],[159.422,150.245],[159.661,150.425],[160.384,150.734],[161.201,150.427],[161.569,150.234],[161.88,149.983],[162.134,149.676],[162.327,149.307],[162.448,148.866],[162.447,147.931],[162.117,147.477],[161.561,146.927],[161.243,146.695],[160.207,146.625]]"
        in definitions
    )


def test_prusaslicer():
    with (gcode_path / "prusaslicer.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = [r for r in results if r.startswith("DEFINE_OBJECT")]

    assert (
        "DEFINE_OBJECT NAME=cylinder_2_id_1_copy_0 CENTER=160.285,148.625 POLYGON=[[160.513,146.681],[160.268,146.693],[159.931,146.769],[158.514,147.252],[158.179,148.01],[158.103,148.462],[158.127,148.938],[158.245,149.4],[158.392,149.726],[159.679,150.294],[160.055,150.429],[160.475,150.479],[161.126,150.446],[161.461,150.301],[161.846,149.914],[162.077,149.631],[162.233,149.348],[162.342,149.02],[162.392,148.641],[162.371,148.283],[162.222,147.623],[161.633,147.062],[161.313,146.869],[161.128,146.798],[160.938,146.734],[160.513,146.681]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_id_0_copy_0 CENTER=150.497,155.524 POLYGON=[[148.11,153.105],[148.11,157.895],[152.9,157.895],[152.84,153.105],[148.11,153.105]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_id_0_copy_1 CENTER=139.563,155.504 POLYGON=[[137.11,153.105],[137.11,157.895],[141.9,157.895],[141.9,153.105],[137.11,153.105]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=union_3_id_2_copy_0 CENTER=144.533,144.510 POLYGON=[[137.11,142.105],[137.11,146.895],[151.9,146.895],[151.9,142.105],[137.11,142.105]]"
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
        "DEFINE_OBJECT NAME=cube_1_stl_id_0_copy_0 CENTER=99.963,83.531 POLYGON=[[97.72,81.22],[97.72,85.78],[102.28,85.72],[102.28,81.22],[97.72,81.22]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_stl_id_0_copy_1 CENTER=99.963,116.531 POLYGON=[[97.72,114.22],[97.72,118.78],[102.28,118.72],[102.28,114.22],[97.72,114.22]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cylinder_2_stl_id_1_copy_0 CENTER=99.962,94.515 POLYGON=[[100.17,92.227],[99.717,92.239],[99.271,92.34],[98.963,92.471],[98.579,92.718],[98.254,93.035],[97.999,93.41],[97.822,93.828],[97.732,94.273],[97.732,94.727],[97.822,95.172],[97.999,95.59],[98.254,95.965],[98.579,96.282],[98.96,96.528],[99.383,96.694],[99.83,96.773],[100.283,96.761],[100.726,96.66],[101.139,96.474],[101.51,96.207],[101.744,95.967],[102.001,95.59],[102.178,95.172],[102.268,94.727],[102.268,94.273],[102.178,93.828],[102.001,93.41],[101.746,93.035],[101.421,92.718],[101.04,92.472],[100.617,92.306],[100.17,92.227]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=union_3_stl_id_2_copy_0 CENTER=99.894,105.502 POLYGON=[[92.72,103.22],[92.72,107.78],[107.28,107.78],[107.28,103.22],[92.72,103.22]]"
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
        "DEFINE_OBJECT NAME=cylinder_2_stl CENTER=143.465,143.521 POLYGON=[[143.448,141.201],[142.992,141.257],[142.559,141.401],[142.182,141.615],[141.888,141.858],[141.597,142.207],[141.379,142.608],[141.245,143.047],[141.2,143.507],[141.24,143.926],[141.379,144.392],[141.588,144.779],[141.898,145.151],[142.247,145.429],[142.664,145.643],[143.095,145.764],[143.552,145.799],[144.009,145.743],[144.441,145.599],[144.845,145.366],[145.166,145.086],[145.402,144.794],[145.623,144.387],[145.755,143.953],[145.8,143.494],[145.753,143.038],[145.623,142.613],[145.409,142.216],[145.101,141.848],[144.753,141.571],[144.36,141.367],[143.905,141.236],[143.448,141.201]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_stl CENTER=150.006,143.497 POLYGON=[[147.7,141.2],[147.7,145.8],[152.3,145.8],[152.3,141.2],[147.7,141.2]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=union_3_stl CENTER=149.838,150.082 POLYGON=[[142.7,147.7],[142.7,152.3],[157.3,152.3],[157.3,147.7],[142.7,147.7]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=cube_1_stl_1 CENTER=150.038,151.520 POLYGON=[[150.719,147.305],[150.569,147.309],[148.861,148.051],[148.4,148.513],[147.7,154.17],[147.7,158.77],[152.3,158.77],[152.3,154.17],[151.494,148.693],[151.255,147.686],[150.719,147.305]]"
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
        "DEFINE_OBJECT NAME=test_bed_part1_3mf CENTER=112.037,102.475 POLYGON=[[111.998,100.194],[111.545,100.239],[111.107,100.375],[110.705,100.594],[110.356,100.887],[110.068,101.248],[109.878,101.611],[109.755,101.998],[109.701,102.49],[109.735,102.901],[109.859,103.343],[110.068,103.752],[110.35,104.107],[110.709,104.409],[111.107,104.625],[111.544,104.761],[112.002,104.806],[112.455,104.761],[112.893,104.625],[113.295,104.406],[113.644,104.113],[113.918,103.773],[114.109,103.421],[114.244,103.005],[114.299,102.51],[114.265,102.099],[114.141,101.657],[113.932,101.248],[113.65,100.893],[113.298,100.596],[112.893,100.375],[112.47,100.242],[111.998,100.194]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=test_bed_part2_3mf CENTER=89.368,102.544 POLYGON=[[81.701,100.194],[81.701,104.806],[96.301,104.806],[96.301,100.194],[81.701,100.194]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=test_bed_part0_3mf CENTER=102.996,102.460 POLYGON=[[100.701,100.194],[100.701,104.806],[105.301,104.806],[105.301,100.194],[100.701,100.194]]"
        in definitions
    )
    assert (
        "DEFINE_OBJECT NAME=test_bed_part0_1_3mf CENTER=117.903,99.725 POLYGON=[[-20.0,-20.0],[118.699,104.806],[123.299,104.806],[123.299,100.194],[-20.0,-20.0]]"
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
