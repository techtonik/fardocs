#!/bin/bash

TARGET=$PWD/_site
mkdir $TARGET

echo --- Build OS ---
cat /etc/os-release

echo --- Cloning Far Manager ---
git clone https://github.com/techtonik/FarManager
cd FarManager

echo --- Building docs ---
./misc/nightly/docs.sh
./misc/nightly/enc.sh
./misc/nightly/far.sh

echo --- Copying docs ---
git status
ls -la
cp -Rv outfinalnew64 $TARGET
cp -Rv outfinalnew32 $TARGET

echo --- Building directory index ---
cd $TARGET
tree -H '.' -L 1 -R > index.html
