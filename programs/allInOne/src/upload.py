#!/usr/bin/env python
import os
retCode = os.system("python src/build.py")

if retCode == 0 :
    print("UPLOADING")

    retCode = os.system("arduino-cli upload -v -b  arduino:avr:nano -p COM4 -i ./build/arduino.avr.nano/allInOne.ino.hex")

    if retCode == 1 :
        print("\nUPLOADING FAILED!!! ")
    else :
        print("\nUPLOADING SUCCES!!! ")
        