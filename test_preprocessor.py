import pathlib
import re
import subprocess
import sys

from preprocess_cancellation import preprocess_cura, preprocess_ideamaker, preprocess_m486, preprocess_slicer, preprocess_simplify3d

gcode_path = pathlib.Path("./GCode")


def collect_definitions(lines):
    definitions = set()
    for line in lines:
        if line.startswith("EXCLUDE_OBJECT_DEFINE"):
            definitions.add(line)
            # Add just the `EXCLUDE_OBJECT_DEFINE NAME=...` as well, for quick checking without caring about coordinates
            definitions.add(re.sub(r"^(EXCLUDE_OBJECT_DEFINE).*(NAME=\S+).*$", r"\1 \2", line))
    return definitions


def test_cli_without():
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

    definitions = collect_definitions(results)

    assert "EXCLUDE_OBJECT_DEFINE NAME=0" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=1" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=2" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=3" in definitions

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

    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_0" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_1" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=union_3_id_2_copy_0" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_id_1_copy_0" in definitions


def test_superslicer():
    with (gcode_path / "superslicer.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = collect_definitions(results)

    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_0" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_1" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=union_3_id_2_copy_0" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_id_1_copy_0" in definitions


def test_prusaslicer():
    with (gcode_path / "prusaslicer.gcode").open("r") as f:
        results = "".join(list(preprocess_slicer(f))).split("\n")

    definitions = collect_definitions(results)

    assert "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_id_1_copy_0" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_0" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_1" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=union_3_id_2_copy_0" in definitions

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

    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl_id_0_copy_0" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl_id_0_copy_1" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_stl_id_1_copy_0" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=union_3_stl_id_2_copy_0" in definitions

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

    assert "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_stl" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=union_3_stl" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl_1" in definitions

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

    assert "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part1_3mf" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part2_3mf" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part0_3mf" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part0_1_3mf" in definitions

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

    assert "EXCLUDE_OBJECT_DEFINE NAME=Shape_Cylinder_id_1_copy_0" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=Shape_Box_id_0_copy_0" in definitions

    assert results.count(f"EXCLUDE_OBJECT_START NAME=Shape_Cylinder_id_1_copy_0") == 125
    assert results.count(f"EXCLUDE_OBJECT_END NAME=Shape_Cylinder_id_1_copy_0") == 125

    assert results.count(f"EXCLUDE_OBJECT_START NAME=Shape_Box_id_0_copy_0") == 125
    assert results.count(f"EXCLUDE_OBJECT_END NAME=Shape_Box_id_0_copy_0") == 125


def test_Simplify3d():
    with (gcode_path / "simplify3d.gcode").open("r") as f:
        results = "".join(list(preprocess_simplify3d(f))).split("\n")

    definitions = collect_definitions(results)

    assert "EXCLUDE_OBJECT_DEFINE NAME=Process_1" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=Process_2" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=Process_3" in definitions
    assert "EXCLUDE_OBJECT_DEFINE NAME=Process_4" in definitions

    assert results.count("EXCLUDE_OBJECT_START NAME=Process_1") == 48
    assert results.count("EXCLUDE_OBJECT_END NAME=Process_1") == 48

    assert results.count("EXCLUDE_OBJECT_START NAME=Process_2") == 48
    assert results.count("EXCLUDE_OBJECT_END NAME=Process_2") == 48

    assert results.count("EXCLUDE_OBJECT_START NAME=Process_3") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=Process_3") == 25

    assert results.count("EXCLUDE_OBJECT_START NAME=Process_4") == 24
    assert results.count("EXCLUDE_OBJECT_END NAME=Process_4") == 24

    assert results.count("G1 Z") == 192
