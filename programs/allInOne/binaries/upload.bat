echo "uploading"
avrdude avrdude.conf -v -V -p atmega328p -c arduino -P COM4 -b 115200 -D -U flash:w:DCC_MOSFET.hex:i

echo %interface%_%baseType% on %comNumber%

avrdude -C avrdude.conf -p atmega328p -c arduino  -P %comNumber% -b 57600 -D -U flash:w:%interface%_%baseType%.hex:i
