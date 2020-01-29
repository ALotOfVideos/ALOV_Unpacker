#!/usr/bin/env bash

# WARNING: This builds Linux binaries. You must use build on Windows (buildexe.bat) to build Windows binaries.

pip install pyinstaller --upgrade
rm -rf dist
pyinstaller unpacker.py --name "ALOV Unpacker" --add-binary "7z.exe:7z" --add-data "ALOV_Unpacker.bat:7z" -F --icon "ALOV_Installer_Icon.ico"
rm -rf __pycache__
rm -rf build
rm -f unpacker.spec
