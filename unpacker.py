import os, sys, shutil, subprocess, glob

#Save location of 7zip
zdir = os.path.join(sys._MEIPASS, "7z", "7z.exe")

#Save location of the first .bat file (with any name) saved in the exe
d = glob.glob(os.path.join(sys._MEIPASS, "7z", "**/*.bat"), recursive = True)
batdir = d[0]

#specify destination directories
dzdir = os.path.join(os.getcwd(), os.path.basename(zdir))
dbatdir = os.path.join(os.getcwd(), os.path.basename(batdir))

#Copy 7z and the bat to the .exe's location
shutil.copy(zdir, dzdir)
shutil.copy(batdir, dbatdir)

#run the bat file
try:
    process = subprocess.Popen([dbatdir], shell=True)
    process.wait()
except Exception as e:
    print(e)
#clean up
os.remove(dzdir)
os.remove(dbatdir)


#Old Example code, for a pure python implementation
#name_of_zipfile = "ALOVME2.7z"

#number of files, 0 indexed
#for n in range(1):
#    f = name_of_zipfile + "." + str(n)
#    if not os.path.isfile(f):
#        raise Exception(f + " is missing! Please download all the necessary files!")
    
#check = subprocess.run([zdir, "x", '-o"ALOV"', name_of_zipfile + ".0"], check=True, shell=True)