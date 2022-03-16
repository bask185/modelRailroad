#!/usr/bin/env python
import os
import sys
#print('ASSEMBLING IO FILES')
#os.system("updateIO.py")
#print('ADDING TIME STAMP')
#os.system("addDate.py")
print('BUILDING PROJECT')
x = os.system('arduino-cli compile -b arduino:avr:nano -e')
if x == 1 : 
    print("\nBUILD FAILED!!!\n")
    sys.exit(1)
else :
    print("\nBUILD SUCCES!!!\n")
    sys.exit(0)

