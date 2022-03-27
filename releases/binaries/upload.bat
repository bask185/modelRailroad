: avrdude avrdude.conf -v -V -p atmega328p -c arduino -P COM4 -b 115200 -D -U flash:w:DCC_MOSFET.hex:i
echo off
setlocal EnableDelayedExpansion
(set \n=^
%=Do not remove this line=%
)

set /p baseType= "select base type!\n!SIGNALS!\n!RELAY!\n!OCCUPANCY!\n!SERVO!\n!MOSFET!\n!CONTROLPANEL!\n!!\n!"
set /p interface= "select interface, DCC, LNET or XNET!\n!!\n!"
set /p comNumber= "select comport!\n!!\n!"

echo UPLOADGING %interface%_%baseType%.hex on %comNumber%

avrdude -C avrdude.conf -p atmega328p -c arduino  -P %comNumber% -b 57600 -D -U flash:w:%interface%_%baseType%.hex:i

pause