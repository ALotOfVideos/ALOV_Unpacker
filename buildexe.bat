@REM Makes a ALOV Unpacker .exe!
python.exe -m pip install pyinstaller --upgrade
RD /S /Q dist
pyinstaller unpacker.py --name "ALOV Unpacker" --add-data "7z.exe;7z" --add-data "ALOV_Unpacker.bat;7z" -F --icon "ALOV_Installer_Icon.ico"
RD /S /Q __pycache__
RD /S /Q build
DEL /Q unpacker.spec