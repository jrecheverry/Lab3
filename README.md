Pre Lab 3
====

Elevator Controller Variations

#Schematic of Nexys2_top_shell

![schematic](https://raw.github.com/jrecheverry/Lab3/master/Prelab3_schematic.JPG)

#Main Lab

The first part of the main lab was simple because the only things that needed to be added were the moore and mealy shells from CE 3. I understand that those were needed to instantiate the design. The only alterations that had to be made to the nexys2_top_shell were the additions of few signals for the elevator floor and next floor states. Once I added the signals and assigned them to the appropriate nibble positions for the moore and mealy state machines respectively, I generated a program file. I was successfully able to create a nexys2_top_shell.bit file for the moore and mealy state machines. From there I successfully programmed my FPGA for the moore and mealy machines.

I was succesfully checked off on the basic functionality on 3/17/2014 by Capt Trimble (pending)...

The B functionality programming was trickier in that the nibble's had to have if and else statements implemented throughout them.
