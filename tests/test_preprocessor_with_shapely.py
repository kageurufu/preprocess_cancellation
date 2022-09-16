import multiprocessing
import pathlib
import subprocess
import sys
import tempfile

import pytest

from preprocess_cancellation.layers import LayerFilter
from preprocess_cancellation.slicers import (
    preprocess_cura_to_klipper,
    preprocess_ideamaker_to_klipper,
    preprocess_m486_to_klipper,
    preprocess_slicer_to_klipper,
)

try:
    import shapely.geometry  # pylint: disable=unused-import
except (OSError, ImportError):
    pytest.skip("Requires shapely installed", allow_module_level=True)
except OSError:
    pytest.skip("Requires libgeos installed", allow_module_level=True)


gcode_path = pathlib.Path("./GCode")


def test_cli_with_shapely():
    """
    Ensure the preprocesor does not crash
    """

    with multiprocessing.Pool() as pool:
        with tempfile.TemporaryDirectory() as tempdir:

            assert not [
                completed_proc
                for completed_proc in pool.starmap(
                    subprocess.run,
                    [
                        (
                            [
                                sys.executable,
                                "-m",
                                "preprocess_cancellation",
                                "--enable-shapely",
                                "--output-dir",
                                str(tempdir),
                                str(gcode),
                            ],
                        )
                        for gcode in gcode_path.glob("*.gcode")
                    ],
                )
                if completed_proc.returncode != 0
            ]


def test_m486():
    with (gcode_path / "m486.gcode").open("r") as f:
        output = "".join(
            list(
                preprocess_m486_to_klipper(
                    f,
                    use_shapely=True,
                    layer_filter=LayerFilter("*"),
                )
            )
        )
        results = output.split("\n")

    assert "EXCLUDE_OBJECT_DEFINE NAME=0 " in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=1 " in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=2 " in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=3 " in output

    assert results.count("EXCLUDE_OBJECT_START NAME=0") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=0") == 25

    assert results.count("EXCLUDE_OBJECT_START NAME=1") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=1") == 25

    assert results.count("EXCLUDE_OBJECT_START NAME=2") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=2") == 25

    assert results.count("EXCLUDE_OBJECT_START NAME=3") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=3") == 25


def test_superslicer():
    with (gcode_path / "superslicer.gcode").open("r") as f:
        output = "".join(
            list(
                preprocess_slicer_to_klipper(
                    f,
                    use_shapely=True,
                    layer_filter=LayerFilter("*"),
                )
            )
        )

    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_0" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_1" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=union_3_id_2_copy_0" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_id_1_copy_0" in output


def test_prusaslicer():
    with (gcode_path / "prusaslicer.gcode").open("r") as f:
        output = "".join(
            list(
                preprocess_slicer_to_klipper(
                    f,
                    use_shapely=True,
                    layer_filter=LayerFilter("*"),
                )
            )
        )
        results = output.split("\n")

    assert "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_id_1_copy_0 " in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_0 " in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_id_0_copy_1 " in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=union_3_id_2_copy_0 " in output

    assert results.count("EXCLUDE_OBJECT_START NAME=cylinder_2_id_1_copy_0") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=cylinder_2_id_1_copy_0") == 25

    assert results.count("EXCLUDE_OBJECT_START NAME=cube_1_id_0_copy_0") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=cube_1_id_0_copy_0") == 25

    assert results.count("EXCLUDE_OBJECT_START NAME=cube_1_id_0_copy_1") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=cube_1_id_0_copy_1") == 25

    assert results.count("EXCLUDE_OBJECT_START NAME=union_3_id_2_copy_0") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=union_3_id_2_copy_0") == 25


def test_slic3r():
    with (gcode_path / "slic3r.gcode").open("r") as f:
        output = "".join(
            list(
                preprocess_slicer_to_klipper(
                    f,
                    use_shapely=True,
                    layer_filter=LayerFilter("*"),
                )
            )
        )
        results = output.split("\n")

    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl_id_0_copy_0" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl_id_0_copy_1" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_stl_id_1_copy_0" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=union_3_stl_id_2_copy_0" in output

    assert results.count("EXCLUDE_OBJECT_START NAME=cube_1_stl_id_0_copy_0") == 16
    assert results.count("EXCLUDE_OBJECT_END NAME=cube_1_stl_id_0_copy_0") == 16

    assert results.count("EXCLUDE_OBJECT_START NAME=cube_1_stl_id_0_copy_1") == 16
    assert results.count("EXCLUDE_OBJECT_END NAME=cube_1_stl_id_0_copy_1") == 16

    assert results.count("EXCLUDE_OBJECT_START NAME=cylinder_2_stl_id_1_copy_0") == 16
    assert results.count("EXCLUDE_OBJECT_END NAME=cylinder_2_stl_id_1_copy_0") == 16

    assert results.count("EXCLUDE_OBJECT_START NAME=union_3_stl_id_2_copy_0") == 16
    assert results.count("EXCLUDE_OBJECT_END NAME=union_3_stl_id_2_copy_0") == 16


def test_cura():
    with (gcode_path / "cura.gcode").open("r") as f:
        output = "".join(
            list(
                preprocess_cura_to_klipper(
                    f,
                    use_shapely=True,
                    layer_filter=LayerFilter("*"),
                )
            )
        )
        results = output.split("\n")

    assert "EXCLUDE_OBJECT_DEFINE NAME=cylinder_2_stl" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=union_3_stl" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=cube_1_stl_1" in output

    assert results.count("EXCLUDE_OBJECT_START NAME=cylinder_2_stl") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=cylinder_2_stl") == 25

    assert results.count("EXCLUDE_OBJECT_START NAME=cube_1_stl") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=cube_1_stl") == 25

    assert results.count("EXCLUDE_OBJECT_START NAME=union_3_stl") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=union_3_stl") == 25

    assert results.count("EXCLUDE_OBJECT_START NAME=cube_1_stl_1") == 25
    assert results.count("EXCLUDE_OBJECT_END NAME=cube_1_stl_1") == 25


def test_ideamaker():
    with (gcode_path / "ideamaker.gcode").open("r") as f:
        output = "".join(
            list(
                preprocess_ideamaker_to_klipper(
                    f,
                    use_shapely=True,
                    layer_filter=LayerFilter("*"),
                )
            )
        )
        results = output.split("\n")

    assert "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part1_3m" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part2_3m" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part0_3m" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=test_bed_part0_1_3m" in output

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
        output = "".join(
            list(
                preprocess_slicer_to_klipper(
                    f,
                    use_shapely=True,
                    layer_filter=LayerFilter("*"),
                )
            )
        )
        results = output.split("\n")

    assert "EXCLUDE_OBJECT_DEFINE NAME=Shape_Cylinder_id_1_copy_0" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Shape_Box_id_0_copy_0" in output

    assert results.count("EXCLUDE_OBJECT_START NAME=Shape_Cylinder_id_1_copy_0") == 125
    assert results.count("EXCLUDE_OBJECT_END NAME=Shape_Cylinder_id_1_copy_0") == 125

    assert results.count("EXCLUDE_OBJECT_START NAME=Shape_Box_id_0_copy_0") == 125
    assert results.count("EXCLUDE_OBJECT_END NAME=Shape_Box_id_0_copy_0") == 125


def test_issue_2_retractions_included_in_bounding_boxes():
    with (gcode_path / "regressions" / "issue_2_retractions.gcode").open("r") as f:
        output = "".join(
            list(
                preprocess_slicer_to_klipper(
                    f,
                    use_shapely=True,
                    layer_filter=LayerFilter("*"),
                )
            )
        )

    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_0_copy_0" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_0" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_1" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_2" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_3" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_4" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_5" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_6" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_7" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_8" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_9" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_10" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_11" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_12" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_13" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_14" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_15" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_16" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_17" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_18" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_19" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_20" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_21" in output
    assert "EXCLUDE_OBJECT_DEFINE NAME=Leaf_stl_id_1_copy_22" in output
