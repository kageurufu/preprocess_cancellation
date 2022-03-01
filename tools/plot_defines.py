import argparse
import json
import sys

import matplotlib.pyplot

for filename in sys.argv[1:]:

    with open(filename, "r") as file:

        fig = matplotlib.pyplot.subplot()
        for line in file:
            if not line.upper().startswith("DEFINE_OBJECT") or line.upper().startswith("EXCLUDE_OBJECT_DEFINE"):
                continue

            _, *params = line.split(" ")

            object = {k.upper(): v for k, v in map(lambda s: s.split("=", maxsplit=1), params)}
            object["CENTER"] = list(map(float, object["CENTER"].split(",")))
            object["POLYGON"] = json.loads(object["POLYGON"])

            geom = matplotlib.pyplot.plot(
                [point[0] for point in object["POLYGON"]],
                [point[1] for point in object["POLYGON"]],
                label=object["NAME"],
            )[0]
            matplotlib.pyplot.plot(object["CENTER"][0], object["CENTER"][1], "-go", color=geom.get_color())

        matplotlib.pyplot.legend(loc="center left", bbox_to_anchor=(1, 0.5))
        matplotlib.pyplot.tight_layout()
        matplotlib.pyplot.show()
