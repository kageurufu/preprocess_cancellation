#!/usr/bin/python3
import re
import sys
from typing import List, Tuple, TypedDict

startregex = re.compile(r"; printing object (.*) id:(\d+) copy (\d+)")
endregex = re.compile(r"; stop printing object (.*) id:(\d+) copy (\d+)")


class DefinedObject(TypedDict):
    id: str
    copy: str
    index: int


def main(sourcegcode: str) -> None:
    defined_objects: List[DefinedObject] = []
    object_index = 0

    def _get_entry(oid: str, copy: str, oindex: int) -> Tuple[int, int]:
        for defined_object in defined_objects:
            if defined_object["id"] == oid and defined_object["copy"] == copy:
                return defined_object["index"], oindex
        defined_objects.append({"id": oid, "copy": copy, "index": oindex})
        oindex += 1
        return defined_objects[-1]["index"], oindex

    with open(sourcegcode, "r+", encoding="utf-8") as infile:
        contents = infile.readlines()
        for index, line in enumerate(contents):
            startmatch = startregex.match(line)
            if startmatch:
                obj_index, object_index = _get_entry(startmatch.group(2), startmatch.group(3), object_index)
                contents.insert(index + 1, f"M486 S{obj_index}\n")

            endmatch = endregex.match(line)
            if endmatch:
                contents.insert(index + 1, "M486 S-1\n")

        contents.insert(0, f"M486 T{len(defined_objects)}\n")
        infile.seek(0)
        infile.writelines(contents)


if __name__ == "__main__":
    main(sys.argv[1])
