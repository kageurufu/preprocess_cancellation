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

from __future__ import annotations

import io
import logging
import os
import pathlib
import shutil
import tempfile
from typing import TYPE_CHECKING

from .layers import LayerFilter
from .slicers import identify_slicer_marker

if TYPE_CHECKING:
    from typing import TYPE_CHECKING, Any, Callable, Generator, Optional, TypeVar

    from .slicers import Preprocessor

    PathLike = TypeVar("PathLike", str, pathlib.Path)


logger = logging.getLogger(__name__)


def preprocess_pipe(infile: io.TextIOBase, **_kw: Any) -> Generator[str, None, None]:
    yield from infile


def preprocess_stream(
    infile: io.TextIOBase,
    outfile: io.TextIOBase,
    *,
    layer_filter: LayerFilter,
    use_shapely: bool = True,
) -> Optional[bool]:
    logger.debug("Identifying slicer")

    processor: Optional[Preprocessor] = None

    for line in infile:
        if line.startswith("EXCLUDE_OBJECT_DEFINE") or line.startswith("DEFINE_OBJECT"):
            logger.info("GCode already supports cancellation")
            infile.seek(0)
            outfile.write(infile.read())
            return True

        if not processor:
            processor = identify_slicer_marker(line)

    if not processor:
        raise ValueError("Could not identify slicer")

    infile.seek(0)
    for line in processor(infile, use_shapely=use_shapely, layer_filter=layer_filter):
        outfile.write(line)

    return True


def preprocess_file(
    filename: PathLike,
    output_suffix: Optional[str] = None,
    output_dir: Optional[str] = None,
    *,
    use_shapely: bool = True,
    layers: str = "*",
) -> bool:
    filepath = pathlib.Path(filename)
    outfilepath = filepath

    if output_dir:
        outfilepath = pathlib.Path(output_dir) / filepath.name
        os.makedirs(outfilepath.parent, exist_ok=True)

    if output_suffix:
        outfilepath = outfilepath.with_name(outfilepath.stem + output_suffix + outfilepath.suffix)

    tempfilepath = pathlib.Path(tempfile.mktemp())

    layer_filter = LayerFilter(layers)

    with filepath.open("r", encoding="utf-8") as fin:
        with tempfilepath.open("w", encoding="utf-8") as fout:
            res = preprocess_stream(fin, fout, use_shapely=use_shapely, layer_filter=layer_filter)

    if res:
        if outfilepath.exists():
            outfilepath.unlink()
        shutil.move(tempfilepath, outfilepath)

    else:
        tempfilepath.unlink()

    return bool(res)
