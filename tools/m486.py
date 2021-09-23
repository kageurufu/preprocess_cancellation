#!/usr/bin/python3
import re
import sys

startregex = re.compile("; printing object (.*) id:(\d+) copy (\d+)")
endregex = re.compile("; stop printing object (.*) id:(\d+) copy (\d+)")

sourcegcode = sys.argv[1]

objects = []
ids = {"id": 0, "copy": 0, "index": 0}
oindex = 0


def _get_entry(oid, copy, oindex):
    for o in objects:
        if o["id"] == oid and o["copy"] == copy:
            return o["index"], oindex
    objects.append({"id": oid, "copy": copy, "index": oindex})
    oindex += 1
    return objects[-1]["index"], oindex


with open(sourcegcode, "r+") as fd:
    contents = fd.readlines()
    for index, line in enumerate(contents):
        startmatch = startregex.match(line)
        if startmatch:
            obj_index, oindex = _get_entry(startmatch.group(2), startmatch.group(3), oindex)
            contents.insert(index + 1, "M486 S{0}\n".format(obj_index))

        endmatch = endregex.match(line)
        if endmatch:
            contents.insert(index + 1, "M486 S-1\n")

    contents.insert(0, "M486 T{0}\n".format(len(objects)))
    fd.seek(0)
    fd.writelines(contents)
