import os, sys, subprocess

#print("Location of 7za.exe")
#print(sys._MEIPASS)
#x = input("Press any key to continue")
zdir = os.path.join(sys._MEIPASS, "7za.exe")

name_of_zipfile = "ALOVME2.7z"

#number of files, 0 indexed
for n in range(1):
    f = name_of_zipfile + "." + str(n)
    if not os.path.isfile(f):
        raise Exception(f + " is missing! Please download all the necessary files!")
    
check = subprocess.run([zdir, "x", '-o"ALOV"', name_of_zipfile + ".0"], check=True, shell=True)