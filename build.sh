#!/bin/bash

TARGET=$PWD/_site
mkdir $TARGET

echo --- Build OS ---
cat /etc/os-release

echo --- Cloning Far Manager ---
git clone https://github.com/FarGroup/FarManager
cd FarManager

echo --- Building docs ---
./misc/nightly/docs.sh
./misc/nightly/enc.sh
./misc/nightly/far.sh

echo --- Copying docs ---
git status
cp -R outfinalnew64 $TARGET
cp -R outfinalnew32 $TARGET
