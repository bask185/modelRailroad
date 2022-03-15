#!/bin/bash
echo "COMPILING"
./build.sh
echo "COMPILING DONE"

echo "UPLOADING"
arduino-cli upload -b arduino:avr:nano -p COM4 -i /C/Users/Gebruiker/Documents/software/ledDriver/build/arduino.avr.nano/ledDriver.ino.with_bootloader.hex
echo "UPLOADING COMPLETE"
exit

#:cpu=atmega328old
