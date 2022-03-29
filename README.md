# All in one Hardware and Software

# Input, Output System and Interface.

Before I explain the content of this repository it is needed that you understand the concepts of 'input', 'output', 'system', 'communication bus' and 'interface'.

**Input** can be considered as an event with which information can be inserted in a system. Pressing a button on your control panel, turning the knob of your hand controller and a train driving over a feedback track is all considered input.

**Output** is an action. Something which happens. An LED which lights up on your control panel, a point being set, a train departing is all considered output.

A **system** is a coherence of input, output and the way between. A system can exist out of a switch which is directly connected to a point motor with a copper wire, but a system can also consist out of a dcc central and computer.

A system often comprises a **communication bus**. Such a bus is intented to connect more than two devices to. This allows for easier wiring and different manufactories can design their devices to work with such a bus. Examples of communication busses found in our model railways are Loconet, XpressNet and DCC.

An **interface** is a system with which unrelated things can interract with eachother. In human: a DCC decoder for serco motors is an interface which translates DCC signals to the 50Hz square wave which is needed to drive a servo motor.

# What this repository contains for you.
This repository contains board files and software to make the most used accessory decoders and feedback modules which you can find under most model railway layouts.

One fully assembled unit exists out of three components. There is a base board, interface shield and an Arduino Nano. These three componentes are stacked on top of one another.

There are currently seven different base boards for input and ouput and three different interface shields for XpressNet, Loconet and DCC. Not all combinations are possible, to understand why I tell a little bit about these three interfaces.

**XpressNet** is a communication bus and is primarily intented for input devices only such has handcontrollers and switch panels. Via XpressNet one can input instructions to a digital command central which uses these instructions to make your model railway move. Having that said, XpressNet can perfectly be used for output devices. With a little effort you can control servo motors using a multimaus. Due to the nature of XpressNet being input only, there are no XpressNet occupancy detectors. This does not exist within XpressNet. I do want to add that an XpressNet central may broadcast feedback information to all connected slaves, whether the can use this information or not.

**Loconet** is intented for basically everything, input and output. There are loconet switch pilots, loconet boosters and loconet occupancy detectors. This makes this bus the most advanced, future proof and usefull bus.

**DCC** is the most used bus to control digital model trains and accessory decoders with. DCC on it's own is output only. The DCC central can only issue commands and there is no feedback. Therefore there are no DCC switch panels or DCC occupancy detectors. This cannot exist.

The busses are linked to eachother via a central. If you issue a command via the XpressNet bus, this command will be sent on the DCC bus. It is also common for centrals which have both XpressNet and Loconet to translate the instructions and relay the instructions on the other bus. For instance, if you use an XpressNet hand controller and Loconet hand controller, both hand controllers will be aware of eachother's instructions.

I want to add that both Loconet and XpressNet can bus used without a DCC central. You can for instance use the loconet bus to connect a switch panel to servo decoder. Or you can let occupancy detectors automatically control signals and also light up LEDs on your control panel. 
##  Relay
The most simple relay base is ment to easily connect tot the 8 channel or 16 channel relay cards you can find on every electronics webshop. The relay base can be used with all three interfaces.


## Control Panel
The control panel base is ment to connect up to 16 switches to with which you can make a control panel. With such a control panel, you can control all kind of outputs like relays, servos, leds etc. Cannot be used with the DCC interface.

## LED panel
The led panel base is used to control up to 32 LEDs in 16 groups of 2 LEDs. An LED may be used as physical feedback of a state of point or relay. But an LED may also show the state of an occupance detector or not. If you use a group of 2 Leds, one LED will always be opposite to the other LED. Can work with all three interfaces.

## Servo
The servo base can be used to control four servo motors with. This base also has four relays to control frogs of points or make sections of track powerless (usefull for analog layouts). Each base has 2 potentiometers with which one can fine tune the servos' positions individualy. The relays are toggled halveway the servo's movement.  Can work with all three interfaces.

## MOSFET
The mosfet base is designed to drive heavy loads such as magnetic coil operated point motors. It may control up to four double coil which are switched with a pulse. With a different firmware this base may be used to drive 8 coils individualy. Can work with all three interfaces.


## occupancy detector
The occupancy detector can use either current sensing or mass detection. For mass detection you need to use higher value resistors and you don't have to solder all bridge rectifiers and the resistor network. The inputs are all galvanic insulated. This detector can detect up to eight tracks.

Note. With default firmware you must use detector in combination with the loconet bus. It allows you to send occupancy information to a digital central. With the switch panel firmware, you can use this detector to directly control signals and/or LEDs on a control panel.

## Signal
The signal base board can control up to 4 3-tone signals. There are 2 different firmware versions for this base. Signals can be controlled directly by occupancy detectors or switch panel buttons and signals can be controlled by a computer. The signals can use overlapping addresses and become fully automated block signals but for computer operation the signals can also be used with 2 addressed for each signal. Can work with all three interfaces.




