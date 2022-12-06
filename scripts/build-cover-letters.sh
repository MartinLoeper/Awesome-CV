#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
pushd "${DIR}/.." > /dev/null

./cover-letters/scripts/build-all.sh

popd

echo -e "\nCover-letters can be found under ./cover-letters/outputs."