# build-vm


##Contents
This directory contains the files required for Vagrant to create a Virtual Machine containing RUBRIC. If you already have Vagrant and VirtualBox installed on your machine, you can download the RUBRIC_Vagrant directory, type "vagrant up" in a command prompt from the downloaded directory to start the machine.


##Prerequisites
Use of these files requires the following software to be installed on the host machine
* [VirtualBox] (https://www.virtualbox.org/)
* [Vagrant] (https://www.vagrantup.com/)


##Resources
This directory was compiled using a variety of resources including those below:
* Open-JDK
* The GATE framework installed on the machine can be found [here]: (https://gate.ac.uk)


##References
* [Bug-fix for base box] (http://forums.debian.net/viewtopic.php?f=10&t=101659_
* [Examples of how to us a GUI in vagrant] (http://stackoverflow.com/questions/18878117/using-vagrant-to-run-virtual-machines-with-desktop-environment)


##Construction Notes:
This directory is still under development. Of note:
* A user may need to open virtualbox separately to view the machine
* A user may need to login to the machine (username and password are "Vagrant")
* If the user has logged in and the blue desktop does not appear, the user may need to start the GUI manually using the command "startxfce4 &".


Modifications to the Virtual Machine since the last (unpublished) version include:
* Using xfce instead of Unity as the interface. This is a more lightweight interface and was easier to include in a script.
* Using open-jdk rather than Oracle JDK. This was easier to script. 


Initial tests indicate that GATE functions correctly with the changes listed above.
