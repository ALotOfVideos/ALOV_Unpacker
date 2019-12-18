@REM Makes a ALOV Unpacker .exe!
python.exe -m pip install pyinstaller --upgrade
pyinstaller unpacker.py --add-data "7za.exe;7z" -F 
RD /S /Q __pycache__
RD /S /Q build
DEL /Q unpacker.spec