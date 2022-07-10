import re


def collect_definitions(lines):
    definitions = set()
    for line in lines:
        if line.startswith("EXCLUDE_OBJECT_DEFINE"):
            definitions.add(line)
            # Add just the `EXCLUDE_OBJECT_DEFINE NAME=...` as well, for quick checking without caring about coordinates
            definitions.add(re.sub(r"^(EXCLUDE_OBJECT_DEFINE).*(NAME=\S+).*$", r"\1 \2", line))
    return definitions
