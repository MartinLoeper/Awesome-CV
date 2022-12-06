#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
pushd "${DIR}/.." > /dev/null

echo -e "Checking keybase installation..."
keybase whoami
echo

if [ $? -ne 0 ]; then
    echo "Please set up keybase properly in advance."
    exit 1;
fi

echo -e "Configuring git...\n"
git config --global --add protocol.keybase.allow always

#echo -e "Adding the git submodule...\n"
#git submodule add keybase://private/martinloeper/cover-letters cover-letters

#echo -e "Initializing the git submodule...\n"
#git submodule init

#echo -e "Updating the git submodule...\n"
#git submodule update

echo -e "Fetching the git submodule...\n"
git submodule update --remote --merge
git submodule foreach --recursive git checkout master

popd > /dev/null