#!/bin/bash -e

for file in `find . -name '*.jsonnet'`; do
    echo "Compiling $file"
    jsonnet $file
done

echo "SUCCESS"
