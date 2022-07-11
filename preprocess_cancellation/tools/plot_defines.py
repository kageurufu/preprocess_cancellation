import argparse
import json
import pathlib
from typing import List, TypedDict

from matplotlib import pyplot

from preprocess_cancellation.gcode import parse_gcode


class DefinedObject(TypedDict):
    NAME: str
    CENTER: List[float]
    POLYGON: List[List[float]]


def main(filenames: List[pathlib.Path], *, save_fig: bool = False) -> None:
    for filename in filenames:
        pyplot.clf()
        with open(filename, "r", encoding="utf-8") as file:
            pyplot.subplot(adjustable="box", aspect="1")
            pyplot.gcf().canvas.manager.set_window_title(filename)

            for line in file:
                if not (line.upper().startswith("DEFINE_OBJECT") or line.upper().startswith("EXCLUDE_OBJECT_DEFINE")):
                    continue

                _command, params = parse_gcode(line)
                defined_object: DefinedObject = {
                    "NAME": params["NAME"],
                    "CENTER": [float(x) for x in params["CENTER"].split(",")],
                    "POLYGON": json.loads(params["POLYGON"]),
                }

                geom = pyplot.plot(
                    [point[0] for point in defined_object["POLYGON"]],
                    [point[1] for point in defined_object["POLYGON"]],
                    label=defined_object["NAME"],
                )[0]
                pyplot.plot(defined_object["CENTER"][0], defined_object["CENTER"][1], "-o", color=geom.get_color())

            pyplot.legend(loc="lower center", bbox_to_anchor=(0.5, -0.25))
            pyplot.tight_layout()

            if save_fig:
                pyplot.savefig(filename.with_suffix(".png"), format="png")

            else:
                pyplot.gcf().canvas.mpl_connect(
                    "key_press_event",
                    lambda event: (event.key in ("q", "escape")) and pyplot.close("all"),
                )
                pyplot.show()


parser = argparse.ArgumentParser()
parser.add_argument("--save-fig", action="store_true", default=False)
parser.add_argument("filenames", nargs="*", type=pathlib.Path)

args = parser.parse_args()
main(args.filenames, save_fig=args.save_fig)
