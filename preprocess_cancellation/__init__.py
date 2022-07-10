#!/usr/bin/env python3
"""
Preprocess G-Code files to inject support for Klipper's EXCLUDE_OBJECT feature.

Current supported slicers: 
  * Cura
  * Slic3r beta
  * PrusaSlicer
  * Superslicer
  * Ideamaker
  * GCode with Marlin M486 tags
"""

import logging
import os
import pathlib
import shutil
import tempfile
from typing import TypeVar

from .layers import LayerFilter
from .slicers import identify_slicer_marker

logger = logging.getLogger(__name__)


PathLike = TypeVar("PathLike", str, pathlib.Path)


def preprocess_pipe(infile, **_kw):
    yield from infile


def preprocess_stream(infile, outfile, *, layer_filter: LayerFilter, use_shapely=True):
    logger.debug("Identifying slicer")
    processor = None
    for line in infile:
        if line.startswith("EXCLUDE_OBJECT_DEFINE") or line.startswith("DEFINE_OBJECT"):
            logger.info("GCode already supports cancellation")
            infile.seek(0)
            outfile.write(infile.read())
            return True

        if not processor:
            processor = identify_slicer_marker(line)

    infile.seek(0)
    for line in processor(infile, use_shapely=use_shapely, layer_filter=layer_filter):
        outfile.write(line)

    return True


def preprocess_file(
    filename: PathLike, output_suffix=None, output_dir=None, *, use_shapely=True, layers: str = "*"
) -> int:
    filepath = pathlib.Path(filename)
    outfilepath = filepath

    if output_dir:
        outfilepath = pathlib.Path(output_dir) / filepath.name
        os.makedirs(outfilepath.parent, exist_ok=True)

    if output_suffix:
        outfilepath = outfilepath.with_name(outfilepath.stem + output_suffix + outfilepath.suffix)

    tempfilepath = pathlib.Path(tempfile.mktemp())

    layer_filter = LayerFilter(layers)

    with filepath.open("r") as fin:
        with tempfilepath.open("w") as fout:
            res = preprocess_stream(fin, fout, use_shapely=use_shapely, layer_filter=layer_filter)

    if res:
        if outfilepath.exists():
            outfilepath.unlink()
        shutil.move(tempfilepath, outfilepath)

    else:
        tempfilepath.unlink()

    return res
