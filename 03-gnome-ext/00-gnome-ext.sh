#!/bin/bash

cd "$(dirname "$0")" || exit 1

for f in ./*.sh; do
    # Skip if it's not a regular file OR if it's this script itself
    if [ -f "$f" ] && [ "$(basename "$f")" != "$(basename "$0")" ]; then
        echo "Running $f..."
        bash "$f"
    fi
done

