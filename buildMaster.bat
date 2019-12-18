@REM Makes a ALOV Unpacker .exe!
pyinstaller --add-data 7za.exe unpacker.py -F 
RD /S /Q __pycache__
RD /S /Q build
DEL /Q FatDownloader.spec