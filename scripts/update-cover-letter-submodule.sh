#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
pushd "${DIR}/.." > /dev/null

git add ./cover-letters/
git commit -m "feat: update cover-letter submodule reference"
git push

popd