#!/bin/bash

if [[ "$(uname -s)" == *"NT"* ]]; then
  echo "This script cannot be run on Windows."
  exit 1
fi

BUILD_DIR="build"
if [ ! -d "$BUILD_DIR" ]; then
  mkdir "$BUILD_DIR"
else
  rm -rf "$BUILD_DIR"/*
fi

SRC_DIR="src"
ZIP_FILE="$BUILD_DIR/UniverseResourcePack.zip"
zip -r "$ZIP_FILE" "$SRC_DIR"

cd ./src
zip -r ../build/UniverseResourcePack.zip *
cd ..

echo "Universe Resource Pack has been built successfully."
