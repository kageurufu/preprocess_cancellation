import argparse
import contextlib
import logging
import sys

import preprocess_cancellation
import preprocess_cancellation.__version__


@contextlib.contextmanager
def cid(x):
    yield x


argparser = argparse.ArgumentParser(
    prog="preprocess_cancellation",
    formatter_class=argparse.RawDescriptionHelpFormatter,
    description=preprocess_cancellation.__doc__,
)

argparser.add_argument(
    "--version",
    "-V",
    action="version",
    version=preprocess_cancellation.__version__.__version_str__,
)
argparser.add_argument(
    "-v",
    "--verbose",
    action="count",
    default=0,
    help="Increase log verbosity. Default is ERROR, -v is WARNING, -vv is INFO, -vvv is DEBUG.",
)
argparser.add_argument(
    "--output-suffix",
    "-o",
    help="Add a suffix to gcoode output. Without this, gcode will be rewritten in place",
)
argparser.add_argument(
    "--output-dir",
    "-O",
    help="GCode output directory",
)

with cid(argparser.add_argument_group("Shape Processing")) as shape_group:

    with cid(shape_group.add_mutually_exclusive_group()) as shapely_group:
        shapely_group.add_argument(
            "--enable-shapely",
            help="Use shapely to generate a hull polygon for objects",
            action="store_true",
            dest="enable_shapely",
            default=True,
        )
        shapely_group.add_argument(
            "--disable-shapely",
            help="Disable using shapely for low memory systems",
            dest="enable_shapely",
            action="store_false",
        )

    with cid(shape_group.add_mutually_exclusive_group()) as layers_group:
        layers_group.add_argument(
            "--layers",
            "-l",
            help=(
                "Layers to collect shape points from\n"
                "  '*' will collect all layers\n"
                "  '*[n]' to collect every nth layer\n"
                "  'n-m' to collect layers from n to m\n"
            ),
            dest="layers",
            type=str,
            default="*",
        )
        layers_group.add_argument(
            "--fast",
            help="Use only the first layer for point collection",
            dest="layers",
            action="store_const",
            const="0",
        )

argparser.add_argument("gcode", nargs="*")


def main():
    args = argparser.parse_args()

    logging.basicConfig(
        stream=sys.stderr,
        # Invert the verbosity, 50 being CRITICAL, 0 being DEBUG
        level=(4 - min(3, args.verbose)) * 10,
    )

    exitcode = 0

    for filename in args.gcode:
        if not preprocess_cancellation.preprocess_file(
            filename,
            output_suffix=args.output_suffix,
            output_dir=args.output_dir,
            use_shapely=args.enable_shapely,
            layers=args.layers,
        ):
            exitcode = 1

    sys.exit(exitcode)
