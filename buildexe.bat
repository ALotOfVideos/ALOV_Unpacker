@REM Makes a ALOV Unpacker .exe!
python.exe -m pip install pyinstaller --upgrade
pyinstaller unpacker.py --add-data "7za.exe;7z" --add=data "A_Lot_Of_Videos_ALOV_for_ME3_-_Unpacker_for_1.1.1.bat;7z" -F 
RD /S /Q __pycache__
RD /S /Q build
DEL /Q unpacker.spec