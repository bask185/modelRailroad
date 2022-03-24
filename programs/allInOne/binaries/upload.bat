echo "uploading"
avrdude avrdude.conf -v -V -p atmega328p -c arduino -P COM4 -b 115200 -D -U flash:w:DCC_MOSFET.hex:i

: "C:\Users\sknippels\AppData\Local\Arduino15\packages\arduino\tools\avrdude\6.3.0-arduino17/bin/avrdude" "-CC:\Users\sknippels\AppData\Local\Arduino15\packages\arduino\tools\avrdude\6.3.0-arduino17/etc/avrdude.conf" -v -V -patmega328p -carduino "-PCOM4" -b115200 -D "-Uflash:w:build\arduino.avr.nano/allInOne.ino.hex:i"
