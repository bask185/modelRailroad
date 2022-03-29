#!/usr/bin/env python

import os
import shutil

#               Xnet    Lnet    DCC
# controlPanel   O      O       NA 
# ledDriver     
# mosfet
# servo
# shuttle
# signal
# occupancy


# #define XNET
#define LNET
# #define DCC

# #define SERVO
# #define MOSFET
# #define RELAY
# #define OCCUPANCY
# #define SIGNALS
# #define SIGNALS_BLOCK
# define CONTROLPANEL
# #define LED_DRIVER
# #define SHUTTLE

#define DEFAULT_DCC_ADDRESS 1

interfaces = ["LNET", "XNET", "DCC"] 
bases = ["CONTROLPANEL", "MOSFET", "SERVO", "OCCUPANCY", "RELAY", "SIGNALS", "SIGNALS_BLOCK"]

for interface in interfaces :

    for base in bases:

        if interface == 'XNET':                                                 # INTERLOCKING, do not compile impossible combination like a DCC occupance detector
            if base == 'OCCUPANCY':
                continue
        if interface == 'DCC':
            if base == 'CONTROLPANEL' or base == 'OCCUPANCY':
                continue

        with open("config.h", "w") as conf:
            conf.write('#define ' + interface + '\n')
            conf.write('#define ' + base + '\n')
            conf.close()

        print("BUILDING: " + interface + '  ' + base)
        os.system("python src/build.py")

        oldDir = 'build/arduino.avr.nano/allInOne.ino.hex'
        newDir = '../../releases/binaries/' + interface + '_' + base + '.hex' 
        print( oldDir )
        print( newDir )


        shutil.move(oldDir, newDir )

