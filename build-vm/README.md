# build-vm


This directory contains the files required for Vagrant to create a Virtual Machine containing RUBRIC. If you already have Vagrant and rsync installed on your machine, you can download the RUBRIC_Vagrant directory, type "vagrant up" in a command prompt from the downloaded directory to start the machine.

This directory is still under development. Of note:
* A user may need to open virtualbox separately to view the machine
* A user may need to login to the machine (username and password are "Vagrant")
* If the user has logged in and the blue desktop does not appear, the user may need to start the GUI manually using the command "startxfce4 &".


In this repository, for RUBRIC you will find:
* Using xfce instead of Unity as the interface. This is a more lightweight interface and was easier to include in a script.
* Using open-jdk rather than Oracle JDK. This was easier to script. 


The GATE tool for which RUBRIC is a plugin is also installed on this machine. Initial tests indicate that it still functions correctly with the changes listed above.
