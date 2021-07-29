#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
pushd "${DIR}/.." > /dev/null

mkdir -p outputs
find . -name '*.tex' -exec xelatex {} \;
mv *.pdf outputs

popd