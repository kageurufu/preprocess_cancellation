import pathlib
import re
import subprocess
import sys

import pytest

from preprocess_cancellation import preprocess_cura, preprocess_ideamaker, preprocess_m486, preprocess_slicer
from test_preprocessor import collect_definitions

try:
    import shapely
except ImportError:
    pytest.skip("Requires shapely installed", allow_module_level=True)


gcode_path = pathlib.Path("./GCode")


def test_cli():
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


def test_m486():
    with (gcode_path / "m486.gcode").open("r") as f:
        results = "".join(list(preprocess_m486(f))).split("\n")

    definitions = collect_definitions(results)

    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=0 CENTER=160.285,148.625 POLYGON=[[160.513,146.681],[160.268,146.693],[159.931,146.769],[158.514,147.252],[158.179,148.01],[158.103,148.462],[158.127,148.938],[158.245,149.4],[158.392,149.726],[159.679,150.294],[160.055,150.429],[160.475,150.479],[161.126,150.446],[161.461,150.301],[161.846,149.914],[162.077,149.631],[162.233,149.348],[162.342,149.02],[162.392,148.641],[162.371,148.283],[162.222,147.623],[161.633,147.062],[161.313,146.869],[161.128,146.798],[160.938,146.734],[160.513,146.681]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=1 CENTER=150.497,155.524 POLYGON=[[148.11,153.105],[148.11,157.895],[152.9,157.895],[152.84,153.105],[148.11,153.105]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=2 CENTER=139.563,155.504 POLYGON=[[137.11,153.105],[137.11,157.895],[141.9,157.895],[141.9,153.105],[137.11,153.105]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=3 CENTER=144.533,144.510 POLYGON=[[137.11,142.105],[137.11,146.895],[151.9,146.895],[151.9,142.105],[137.11,142.105]]"
        in definitions
    )

    assert results.count(f"EXCLUDE_OBJECT_START NAME=0") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=0") == 25

    assert results.count(f"EXCLUDE_OBJECT_START NAME=1") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=1") == 25

    assert results.count(f"EXCLUDE_OBJECT_START NAME=2") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=2") == 25

    assert results.count(f"EXCLUDE_OBJECT_START NAME=3") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=3") == 25


def test_superslicer():
    with (gcode_path / "superslicer.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = collect_definitions(results)

    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_0 CENTER=150.515,155.476 POLYGON=[[148.215,153.21],[148.215,157.79],[152.795,157.79],[152.735,153.21],[148.215,153.21]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_1 CENTER=139.578,155.479 POLYGON=[[137.215,153.21],[137.215,157.79],[141.795,157.79],[141.795,153.21],[137.215,153.21]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=union_3_id_2_copy_0 CENTER=144.198,144.526 POLYGON=[[137.215,142.21],[137.215,146.79],[151.795,146.79],[151.795,142.21],[137.215,142.21]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_id_1_copy_0 CENTER=160.152,148.483 POLYGON=[[160.207,146.625],[159.764,146.745],[159.4,146.942],[158.346,147.789],[158.23,148.24],[158.205,148.581],[158.567,149.29],[158.862,149.692],[159.422,150.245],[159.661,150.425],[160.384,150.734],[161.201,150.427],[161.569,150.234],[161.88,149.983],[162.134,149.676],[162.327,149.307],[162.448,148.866],[162.447,147.931],[162.117,147.477],[161.561,146.927],[161.243,146.695],[160.207,146.625]]"
        in definitions
    )


def test_prusaslicer():
    with (gcode_path / "prusaslicer.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = collect_definitions(results)

    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_id_1_copy_0 CENTER=160.285,148.625 POLYGON=[[160.513,146.681],[160.268,146.693],[159.931,146.769],[158.514,147.252],[158.179,148.01],[158.103,148.462],[158.127,148.938],[158.245,149.4],[158.392,149.726],[159.679,150.294],[160.055,150.429],[160.475,150.479],[161.126,150.446],[161.461,150.301],[161.846,149.914],[162.077,149.631],[162.233,149.348],[162.342,149.02],[162.392,148.641],[162.371,148.283],[162.222,147.623],[161.633,147.062],[161.313,146.869],[161.128,146.798],[160.938,146.734],[160.513,146.681]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_0 CENTER=150.497,155.524 POLYGON=[[148.11,153.105],[148.11,157.895],[152.9,157.895],[152.84,153.105],[148.11,153.105]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_1 CENTER=139.563,155.504 POLYGON=[[137.11,153.105],[137.11,157.895],[141.9,157.895],[141.9,153.105],[137.11,153.105]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=union_3_id_2_copy_0 CENTER=144.533,144.510 POLYGON=[[137.11,142.105],[137.11,146.895],[151.9,146.895],[151.9,142.105],[137.11,142.105]]"
        in definitions
    )

    assert results.count(f"EXCLUDE_OBJECT_START NAME=cylinder_2_id_1_copy_0") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=cylinder_2_id_1_copy_0") == 25

    assert results.count(f"EXCLUDE_OBJECT_START NAME=cube_1_id_0_copy_0") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=cube_1_id_0_copy_0") == 25

    assert results.count(f"EXCLUDE_OBJECT_START NAME=cube_1_id_0_copy_1") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=cube_1_id_0_copy_1") == 25

    assert results.count(f"EXCLUDE_OBJECT_START NAME=union_3_id_2_copy_0") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=union_3_id_2_copy_0") == 25


def test_slic3r():
    with (gcode_path / "slic3r.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = collect_definitions(results)

    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl_id_0_copy_0 CENTER=99.963,83.531 POLYGON=[[97.72,81.22],[97.72,85.78],[102.28,85.72],[102.28,81.22],[97.72,81.22]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl_id_0_copy_1 CENTER=99.963,116.531 POLYGON=[[97.72,114.22],[97.72,118.78],[102.28,118.72],[102.28,114.22],[97.72,114.22]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_stl_id_1_copy_0 CENTER=99.962,94.515 POLYGON=[[100.17,92.227],[99.717,92.239],[99.271,92.34],[98.963,92.471],[98.579,92.718],[98.254,93.035],[97.999,93.41],[97.822,93.828],[97.732,94.273],[97.732,94.727],[97.822,95.172],[97.999,95.59],[98.254,95.965],[98.579,96.282],[98.96,96.528],[99.383,96.694],[99.83,96.773],[100.283,96.761],[100.726,96.66],[101.139,96.474],[101.51,96.207],[101.744,95.967],[102.001,95.59],[102.178,95.172],[102.268,94.727],[102.268,94.273],[102.178,93.828],[102.001,93.41],[101.746,93.035],[101.421,92.718],[101.04,92.472],[100.617,92.306],[100.17,92.227]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=union_3_stl_id_2_copy_0 CENTER=99.894,105.502 POLYGON=[[92.72,103.22],[92.72,107.78],[107.28,107.78],[107.28,103.22],[92.72,103.22]]"
        in definitions
    )

    assert results.count(f"EXCLUDE_OBJECT_START NAME=cube_1_stl_id_0_copy_0") == 16
    assert results.count(f"EXCLUDE_OBJECT_END NAME=cube_1_stl_id_0_copy_0") == 16

    assert results.count(f"EXCLUDE_OBJECT_START NAME=cube_1_stl_id_0_copy_1") == 16
    assert results.count(f"EXCLUDE_OBJECT_END NAME=cube_1_stl_id_0_copy_1") == 16

    assert results.count(f"EXCLUDE_OBJECT_START NAME=cylinder_2_stl_id_1_copy_0") == 16
    assert results.count(f"EXCLUDE_OBJECT_END NAME=cylinder_2_stl_id_1_copy_0") == 16

    assert results.count(f"EXCLUDE_OBJECT_START NAME=union_3_stl_id_2_copy_0") == 16
    assert results.count(f"EXCLUDE_OBJECT_END NAME=union_3_stl_id_2_copy_0") == 16


def test_cura():
    with (gcode_path / "cura.gcode").open("r") as f:
        results = "".join(list(preprocess_cura(f))).split("\n")

    definitions = collect_definitions(results)

    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_stl CENTER=143.465,143.521 POLYGON=[[143.448,141.201],[142.992,141.257],[142.559,141.401],[142.182,141.615],[141.888,141.858],[141.597,142.207],[141.379,142.608],[141.245,143.047],[141.2,143.507],[141.24,143.926],[141.379,144.392],[141.588,144.779],[141.898,145.151],[142.247,145.429],[142.664,145.643],[143.095,145.764],[143.552,145.799],[144.009,145.743],[144.441,145.599],[144.845,145.366],[145.166,145.086],[145.402,144.794],[145.623,144.387],[145.755,143.953],[145.8,143.494],[145.753,143.038],[145.623,142.613],[145.409,142.216],[145.101,141.848],[144.753,141.571],[144.36,141.367],[143.905,141.236],[143.448,141.201]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl CENTER=150.006,143.497 POLYGON=[[147.7,141.2],[147.7,145.8],[152.3,145.8],[152.3,141.2],[147.7,141.2]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=union_3_stl CENTER=149.838,150.082 POLYGON=[[142.7,147.7],[142.7,152.3],[157.3,152.3],[157.3,147.7],[142.7,147.7]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl_1 CENTER=150.038,151.520 POLYGON=[[150.719,147.305],[150.569,147.309],[148.861,148.051],[148.4,148.513],[147.7,154.17],[147.7,158.77],[152.3,158.77],[152.3,154.17],[151.494,148.693],[151.255,147.686],[150.719,147.305]]"
        in definitions
    )

    assert results.count(f"EXCLUDE_OBJECT_START NAME=cylinder_2_stl") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=cylinder_2_stl") == 25

    assert results.count(f"EXCLUDE_OBJECT_START NAME=cube_1_stl") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=cube_1_stl") == 25

    assert results.count(f"EXCLUDE_OBJECT_START NAME=union_3_stl") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=union_3_stl") == 25

    assert results.count(f"EXCLUDE_OBJECT_START NAME=cube_1_stl_1") == 25
    assert results.count(f"EXCLUDE_OBJECT_END NAME=cube_1_stl_1") == 25


def test_ideamaker():
    with (gcode_path / "ideamaker.gcode").open("r") as f:
        results = "".join(list(preprocess_ideamaker(f))).split("\n")

    definitions = collect_definitions(results)

    print(definitions)
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part1_3mf CENTER=112.037,102.475 POLYGON=[[111.998,100.194],[111.545,100.239],[111.107,100.375],[110.705,100.594],[110.356,100.887],[110.068,101.248],[109.878,101.611],[109.755,101.998],[109.701,102.49],[109.735,102.901],[109.859,103.343],[110.068,103.752],[110.35,104.107],[110.709,104.409],[111.107,104.625],[111.544,104.761],[112.002,104.806],[112.455,104.761],[112.893,104.625],[113.295,104.406],[113.644,104.113],[113.918,103.773],[114.109,103.421],[114.244,103.005],[114.299,102.51],[114.265,102.099],[114.141,101.657],[113.932,101.248],[113.65,100.893],[113.298,100.596],[112.893,100.375],[112.47,100.242],[111.998,100.194]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part2_3mf CENTER=89.368,102.544 POLYGON=[[81.701,100.194],[81.701,104.806],[96.301,104.806],[96.301,100.194],[81.701,100.194]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part0_3mf CENTER=102.996,102.460 POLYGON=[[100.701,100.194],[100.701,104.806],[105.301,104.806],[105.301,100.194],[100.701,100.194]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part0_1_3mf CENTER=121.037,102.446 POLYGON=[[118.699,100.194],[118.699,104.806],[123.299,104.806],[123.299,100.194],[118.699,100.194]]"
        in definitions
    )

    assert results.count("EXCLUDE_OBJECT_START NAME=test_bed_part1_3mf") == 32
    assert results.count("EXCLUDE_OBJECT_END NAME=test_bed_part1_3mf") == 32

    assert results.count("EXCLUDE_OBJECT_START NAME=test_bed_part2_3mf") == 32
    assert results.count("EXCLUDE_OBJECT_END NAME=test_bed_part2_3mf") == 32

    assert results.count("EXCLUDE_OBJECT_START NAME=test_bed_part0_3mf") == 33
    assert results.count("EXCLUDE_OBJECT_END NAME=test_bed_part0_3mf") == 33

    assert results.count("EXCLUDE_OBJECT_START NAME=test_bed_part0_1_3mf") == 33
    assert results.count("EXCLUDE_OBJECT_END NAME=test_bed_part0_1_3mf") == 33


def test_issue_1_prusaslicer_point_collection():
    with (gcode_path / "prusaslicer-issue1.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = collect_definitions(results)

    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Shape_Cylinder_id_1_copy_0 CENTER=154.928,108.320 POLYGON=[[155.012,94.688],[153.801,94.741],[152.362,94.943],[151.141,95.238],[149.812,95.698],[148.495,96.312],[147.318,97.015],[146.278,97.78],[145.199,98.752],[144.247,99.806],[143.437,100.909],[142.759,102.049],[142.145,103.365],[141.675,104.728],[141.39,105.914],[141.189,107.337],[141.135,108.562],[141.202,109.923],[141.39,111.211],[141.672,112.387],[142.145,113.761],[142.759,115.077],[143.468,116.263],[144.227,117.295],[145.199,118.374],[146.273,119.342],[147.251,120.066],[148.496,120.814],[149.774,121.412],[151.106,121.877],[152.362,122.183],[153.787,122.384],[155.009,122.438],[156.409,122.367],[157.658,122.183],[158.999,121.852],[160.208,121.427],[161.524,120.814],[162.707,120.107],[163.742,119.346],[164.821,118.374],[165.742,117.357],[166.513,116.322],[167.261,115.077],[167.863,113.79],[168.321,112.478],[168.63,111.211],[168.827,109.831],[168.885,108.564],[168.818,107.202],[168.63,105.914],[168.348,104.738],[167.875,103.365],[167.261,102.048],[166.548,100.856],[165.793,99.831],[164.821,98.752],[163.744,97.781],[162.77,97.06],[161.737,96.427],[160.431,95.79],[159.299,95.367],[157.895,94.991],[156.46,94.764],[155.012,94.688]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Shape_Box_id_0_copy_0 CENTER=106.872,107.537 POLYGON=[[94.59,95.262],[94.59,119.812],[119.14,119.812],[119.14,95.262],[94.59,95.262]]"
        in definitions
    )

    assert results.count(f"EXCLUDE_OBJECT_START NAME=Shape_Cylinder_id_1_copy_0") == 125
    assert results.count(f"EXCLUDE_OBJECT_END NAME=Shape_Cylinder_id_1_copy_0") == 125

    assert results.count(f"EXCLUDE_OBJECT_START NAME=Shape_Box_id_0_copy_0") == 125
    assert results.count(f"EXCLUDE_OBJECT_END NAME=Shape_Box_id_0_copy_0") == 125


def test_issue_2_retractions_included_in_bounding_boxes():
    with (gcode_path / "regressions" / "issue_2_retractions.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = collect_definitions(results)

    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_0_copy_0 CENTER=262.560,254.074 POLYGON=[[248.503,217.6],[247.62,218.483],[247.62,287.417],[248.503,288.3],[276.637,288.3],[277.52,287.417],[277.52,218.483],[276.637,217.6],[248.503,217.6]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_17 CENTER=212.125,263.634 POLYGON=[[249.038,218.607],[176.523,248.78],[175.64,249.663],[175.64,277.797],[176.523,278.68],[245.457,278.68],[246.34,277.797],[249.038,218.607]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_7 CENTER=212.092,232.556 POLYGON=[[176.523,217.6],[175.64,218.483],[175.64,246.617],[176.523,247.5],[217.858,270.087],[245.457,247.5],[246.34,246.617],[246.34,218.483],[245.457,217.6],[176.523,217.6]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_3 CENTER=212.085,201.377 POLYGON=[[176.523,186.42],[175.64,187.303],[175.64,215.437],[176.523,216.32],[217.858,238.907],[245.457,216.32],[246.34,215.437],[246.34,187.303],[245.457,186.42],[176.523,186.42]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_2 CENTER=212.085,170.197 POLYGON=[[176.523,155.24],[175.64,156.123],[175.64,184.257],[176.523,185.14],[217.858,207.727],[245.457,185.14],[246.34,184.257],[246.34,156.123],[245.457,155.24],[176.523,155.24]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_5 CENTER=212.085,139.017 POLYGON=[[176.523,124.06],[175.64,124.943],[175.64,153.077],[176.523,153.96],[217.858,176.547],[245.457,153.96],[246.34,153.077],[246.34,124.943],[245.457,124.06],[176.523,124.06]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_12 CENTER=212.085,107.837 POLYGON=[[176.523,92.88],[175.64,93.763],[175.64,121.897],[176.523,122.78],[217.858,145.367],[245.457,122.78],[246.34,121.897],[246.34,93.763],[245.457,92.88],[176.523,92.88]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_21 CENTER=212.086,76.657 POLYGON=[[176.523,61.7],[175.64,62.583],[175.64,90.717],[176.523,91.6],[217.858,114.187],[245.457,91.6],[246.34,90.717],[246.34,62.583],[245.457,61.7],[176.523,61.7]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_20 CENTER=139.930,76.676 POLYGON=[[104.543,61.7],[103.66,62.583],[103.66,90.717],[104.543,91.6],[173.477,91.6],[217.858,83.007],[173.477,61.7],[104.543,61.7]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_13 CENTER=140.185,107.747 POLYGON=[[145.878,83.007],[104.543,92.88],[103.66,93.763],[103.66,121.897],[104.543,122.78],[173.477,122.78],[174.36,121.897],[174.36,93.763],[173.477,92.88],[145.878,83.007]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_4 CENTER=140.185,138.927 POLYGON=[[145.878,114.187],[104.543,124.06],[103.66,124.943],[103.66,153.077],[104.543,153.96],[173.477,153.96],[174.36,153.077],[174.36,124.943],[173.477,124.06],[145.878,114.187]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_0 CENTER=140.185,170.107 POLYGON=[[145.878,145.367],[104.543,155.24],[103.66,156.123],[103.66,184.257],[104.543,185.14],[173.477,185.14],[174.36,184.257],[174.36,156.123],[173.477,155.24],[145.878,145.367]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_1 CENTER=140.185,201.287 POLYGON=[[145.878,176.547],[104.543,186.42],[103.66,187.303],[103.66,215.437],[104.543,216.32],[173.477,216.32],[174.36,215.437],[174.36,187.303],[173.477,186.42],[145.878,176.547]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_6 CENTER=140.189,232.467 POLYGON=[[145.878,207.727],[104.543,217.6],[103.66,218.483],[103.66,246.617],[104.543,247.5],[173.477,247.5],[174.36,246.617],[174.36,218.483],[173.477,217.6],[145.878,207.727]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_15 CENTER=140.183,263.647 POLYGON=[[145.878,238.907],[104.543,248.78],[103.66,249.663],[103.66,277.797],[104.543,278.68],[173.477,278.68],[174.36,277.797],[174.36,249.663],[173.477,248.78],[145.878,238.907]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_16 CENTER=67.954,263.755 POLYGON=[[32.563,248.78],[31.68,249.663],[31.68,277.797],[32.563,278.68],[101.497,278.68],[145.878,270.087],[101.497,248.78],[32.563,248.78]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_11 CENTER=68.132,232.556 POLYGON=[[32.563,217.6],[31.68,218.483],[31.68,246.617],[32.563,247.5],[73.898,270.087],[101.497,247.5],[102.38,246.617],[102.38,218.483],[101.497,217.6],[32.563,217.6]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_9 CENTER=68.125,201.377 POLYGON=[[32.563,186.42],[31.68,187.303],[31.68,215.437],[32.563,216.32],[73.898,238.907],[101.497,216.32],[102.38,215.437],[102.38,187.303],[101.497,186.42],[32.563,186.42]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_8 CENTER=68.125,170.197 POLYGON=[[32.563,155.24],[31.68,156.123],[31.68,184.257],[32.563,185.14],[73.898,207.727],[101.497,185.14],[102.38,184.257],[102.38,156.123],[101.497,155.24],[32.563,155.24]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_10 CENTER=68.125,139.017 POLYGON=[[32.563,124.06],[31.68,124.943],[31.68,153.077],[32.563,153.96],[73.898,176.547],[101.497,153.96],[102.38,153.077],[102.38,124.943],[101.497,124.06],[32.563,124.06]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_14 CENTER=68.124,107.836 POLYGON=[[32.563,92.88],[31.68,93.763],[31.68,121.897],[32.563,122.78],[73.898,145.367],[101.497,122.78],[102.38,121.897],[102.38,93.763],[101.497,92.88],[32.563,92.88]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_22 CENTER=284.066,138.959 POLYGON=[[73.898,114.187],[248.503,153.96],[317.437,153.96],[318.32,153.077],[318.32,124.943],[317.437,124.06],[73.898,114.187]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_18 CENTER=284.145,170.107 POLYGON=[[289.838,145.367],[248.503,155.24],[247.62,156.123],[247.62,184.257],[248.503,185.14],[317.437,185.14],[318.32,184.257],[318.32,156.123],[317.437,155.24],[289.838,145.367]]"
        not in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_19 CENTER=283.965,201.251 POLYGON=[[289.838,176.547],[248.503,186.42],[247.62,187.303],[247.62,215.437],[248.503,216.32],[317.437,216.32],[318.32,215.437],[318.32,187.303],[317.437,186.42],[289.838,176.547]]"
        not in definitions
    )

    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_0_copy_0 CENTER=262.533,254.031 POLYGON=[[248.503,217.6],[247.62,218.483],[247.62,287.417],[248.503,288.3],[276.637,288.3],[277.52,287.417],[277.52,218.483],[276.637,217.6],[248.503,217.6]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_17 CENTER=212.040,263.680 POLYGON=[[176.523,248.78],[175.64,249.663],[175.64,277.797],[176.523,278.68],[245.457,278.68],[246.34,277.797],[246.34,249.663],[245.457,248.78],[176.523,248.78]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_7 CENTER=212.091,232.531 POLYGON=[[176.523,217.6],[175.64,218.483],[175.64,246.617],[176.523,247.5],[245.457,247.5],[246.34,246.617],[246.34,218.483],[245.457,217.6],[176.523,217.6]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_3 CENTER=212.087,201.352 POLYGON=[[176.523,186.42],[175.64,187.303],[175.64,215.437],[176.523,216.32],[245.457,216.32],[246.34,215.437],[246.34,187.303],[245.457,186.42],[176.523,186.42]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_2 CENTER=212.087,170.172 POLYGON=[[176.523,155.24],[175.64,156.123],[175.64,184.257],[176.523,185.14],[245.457,185.14],[246.34,184.257],[246.34,156.123],[245.457,155.24],[176.523,155.24]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_5 CENTER=212.087,138.992 POLYGON=[[176.523,124.06],[175.64,124.943],[175.64,153.077],[176.523,153.96],[245.457,153.96],[246.34,153.077],[246.34,124.943],[245.457,124.06],[176.523,124.06]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_12 CENTER=212.087,107.812 POLYGON=[[176.523,92.88],[175.64,93.763],[175.64,121.897],[176.523,122.78],[245.457,122.78],[246.34,121.897],[246.34,93.763],[245.457,92.88],[176.523,92.88]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_21 CENTER=212.087,76.632 POLYGON=[[176.523,61.7],[175.64,62.583],[175.64,90.717],[176.523,91.6],[245.457,91.6],[246.34,90.717],[246.34,62.583],[245.457,61.7],[176.523,61.7]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_20 CENTER=139.931,76.673 POLYGON=[[104.543,61.7],[103.66,62.583],[103.66,90.717],[104.543,91.6],[173.477,91.6],[174.36,90.717],[174.36,62.583],[173.477,61.7],[104.543,61.7]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_13 CENTER=140.090,107.793 POLYGON=[[104.543,92.88],[103.66,93.763],[103.66,121.897],[104.543,122.78],[173.477,122.78],[174.36,121.897],[174.36,93.763],[173.477,92.88],[104.543,92.88]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_4 CENTER=140.090,138.973 POLYGON=[[104.543,124.06],[103.66,124.943],[103.66,153.077],[104.543,153.96],[173.477,153.96],[174.36,153.077],[174.36,124.943],[173.477,124.06],[104.543,124.06]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_0 CENTER=140.090,170.153 POLYGON=[[104.543,155.24],[103.66,156.123],[103.66,184.257],[104.543,185.14],[173.477,185.14],[174.36,184.257],[174.36,156.123],[173.477,155.24],[104.543,155.24]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_1 CENTER=140.090,201.333 POLYGON=[[104.543,186.42],[103.66,187.303],[103.66,215.437],[104.543,216.32],[173.477,216.32],[174.36,215.437],[174.36,187.303],[173.477,186.42],[104.543,186.42]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_6 CENTER=140.094,232.512 POLYGON=[[104.543,217.6],[103.66,218.483],[103.66,246.617],[104.543,247.5],[173.477,247.5],[174.36,246.617],[174.36,218.483],[173.477,217.6],[104.543,217.6]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_15 CENTER=140.088,263.692 POLYGON=[[104.543,248.78],[103.66,249.663],[103.66,277.797],[104.543,278.68],[173.477,278.68],[174.36,277.797],[174.36,249.663],[173.477,248.78],[104.543,248.78]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_16 CENTER=67.953,263.754 POLYGON=[[32.563,248.78],[31.68,249.663],[31.68,277.797],[32.563,278.68],[101.497,278.68],[102.38,277.797],[102.38,249.663],[101.497,248.78],[32.563,248.78]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_11 CENTER=68.131,232.531 POLYGON=[[32.563,217.6],[31.68,218.483],[31.68,246.617],[32.563,247.5],[101.497,247.5],[102.38,246.617],[102.38,218.483],[101.497,217.6],[32.563,217.6]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_9 CENTER=68.127,201.352 POLYGON=[[32.563,186.42],[31.68,187.303],[31.68,215.437],[32.563,216.32],[101.497,216.32],[102.38,215.437],[102.38,187.303],[101.497,186.42],[32.563,186.42]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_8 CENTER=68.127,170.172 POLYGON=[[32.563,155.24],[31.68,156.123],[31.68,184.257],[32.563,185.14],[101.497,185.14],[102.38,184.257],[102.38,156.123],[101.497,155.24],[32.563,155.24]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_10 CENTER=68.127,138.992 POLYGON=[[32.563,124.06],[31.68,124.943],[31.68,153.077],[32.563,153.96],[101.497,153.96],[102.38,153.077],[102.38,124.943],[101.497,124.06],[32.563,124.06]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_14 CENTER=68.125,107.811 POLYGON=[[32.563,92.88],[31.68,93.763],[31.68,121.897],[32.563,122.78],[101.497,122.78],[102.38,121.897],[102.38,93.763],[101.497,92.88],[32.563,92.88]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_22 CENTER=284.031,138.961 POLYGON=[[248.503,124.06],[247.62,124.943],[247.62,153.077],[248.503,153.96],[317.437,153.96],[318.32,153.077],[318.32,124.943],[317.437,124.06],[248.503,124.06]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_18 CENTER=284.050,170.153 POLYGON=[[248.503,155.24],[247.62,156.123],[247.62,184.257],[248.503,185.14],[317.437,185.14],[318.32,184.257],[318.32,156.123],[317.437,155.24],[248.503,155.24]]"
        in definitions
    )
    assert (
        "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_19 CENTER=284.050,201.329 POLYGON=[[248.503,186.42],[247.62,187.303],[247.62,215.437],[248.503,216.32],[317.437,216.32],[318.32,215.437],[318.32,187.303],[317.437,186.42],[248.503,186.42]]"
        in definitions
    )
