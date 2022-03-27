echo "Welcom"
set /p interface=Which interface are you using (DCC XNET LNET)?/n
set /p baseType=Which base shield are you using (MOSFET, SERVO, OCCUPANCY, CONTROLPANEL, RELAY)?/n
set /p comNumber=Which comport is your arduino connected to?\n

echo %interface%_%baseType% on %comNumber%

avrdude -C avrdude.conf -p atmega328p -c arduino  -P %comNumber% -b 57600 -D -U flash:w:%interface%_%baseType%.hex:i
