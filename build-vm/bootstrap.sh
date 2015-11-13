#!/usr/bin/env bash

apt-get update

#Install java 7 and tools needed for configuration (git, wget, unzip)
apt-get install -y openjdk-7-jdk git wget unzip


#Declare variables for GATE files
GF="gate-7.1-build4485-BIN"
RHOME="/usr/local/RUBRIC/"

#Download and configure gate files
wget https://sourceforge.net/projects/gate/files/gate/7.1/$GF.zip -P $RHOME
unzip $RHOME//$GF.zip -d $RHOME
#chmod a+x $RHOME//$GF/bin/gate.sh
#kept seeing an error and found the fix here: http://forums.debian.net/viewtopic.php?f=10&t=101659
/usr/share/debconf/fix_db.pl

#Download Rubric plugin
#git clone https://github.com/SoftwareEngineeringToolDemos/FSE-2013-RUBRIC.git $RHOME

#start UI
#this is based on the examples found at http://stackoverflow.com/questions/18878117/using-vagrant-to-run-virtual-machines-with-desktop-environment
apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
/usr/share/debconf/fix_db.pl
#Based on information from http://askubuntu.com/questions/300799/does-ubuntu-12-04-lts-32-bit-have-graphic-user-interface/300805#300805
#add-apt-repository ppa:gnome3-team/gnome3
apt-get update
apt-get install -y gnome-shell ubuntu-desktop gdm
/usr/share/debconf/fix_db.pl
#dpkg-reconfigure gdm
sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config
VBoxClient-all
#apt-get install -y xfce4 


startxfce4 &

