@echo off

if not "%OS%" == "Windows_NT" (
  echo This script can only be run on Windows.
  exit /b 1
)

set BUILD_DIR=build
if not exist "%BUILD_DIR%" (
  mkdir "%BUILD_DIR%"
) else (
  del /q "%BUILD_DIR%\*"
)

set SRC_DIR=src
set ZIP_FILE=%BUILD_DIR%\UniverseResourcePack.zip

where /q zip
if errorlevel 1 (
  echo zip utility not found. Please install it and ensure it is in your PATH.
  exit /b 1
)

cd "%SRC_DIR%"
zip -r "..\%ZIP_FILE%" *
cd ..

echo Universe Resource Pack has been built successfully.
