import argparse
import json
import pathlib
from typing import List

from matplotlib import pyplot


def main(filenames: List[pathlib.Path], *, save_fig: bool = False):
    for filename in filenames:
        pyplot.clf()
        with open(filename, "r") as file:
            pyplot.subplot(adjustable="box", aspect="1")
            pyplot.gcf().canvas.manager.set_window_title(filename)

            for line in file:
                if not (line.upper().startswith("DEFINE_OBJECT") or line.upper().startswith("EXCLUDE_OBJECT_DEFINE")):
                    continue

                _, *params = line.split(" ")

                object = {k.upper(): v for k, v in map(lambda s: s.split("=", maxsplit=1), params)}
                object["CENTER"] = list(map(float, object["CENTER"].split(",")))
                object["POLYGON"] = json.loads(object["POLYGON"])

                geom = pyplot.plot(
                    [point[0] for point in object["POLYGON"]],
                    [point[1] for point in object["POLYGON"]],
                    label=object["NAME"],
                )[0]
                pyplot.plot(object["CENTER"][0], object["CENTER"][1], "-o", color=geom.get_color())

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
