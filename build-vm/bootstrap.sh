#!/usr/bin/env bash

apt-get update

#Remove unnecessary software, pulled from a variety of sources including http://askubuntu.com/questions/32228/how-can-i-remove-all-default-installed-games, http://askubuntu.com/questions/231562/what-is-the-difference-between-apt-get-purge-and-apt-get-remove
apt-get remove --purge -y unity-webapps-common gnome-mahjongg gnomine gnome-sudoku aisleriot libreoffice* 
apt-get clean -y
apt-get autoremove -y

#Install java 7 and tools needed for configuration (git, wget, unzip)s
apt-get install -y openjdk-7-jdk git wget unzip

#Declare variables for GATE files
GF="gate-7.1-build4485-BIN"
RHOME="/usr/local/RUBRIC/"

#Download and configure gate files
wget https://sourceforge.net/projects/gate/files/gate/7.1/$GF.zip -P $RHOME
unzip $RHOME//$GF.zip -d $RHOME

#Download Rubric plugin
git clone https://github.com/SoftwareEngineeringToolDemos/FSE-2013-RUBRIC.git $RHOME/GitHubRepo
cp  $RHOME/GitHubRepo/Executables/rubric.jar $RHOME

#Copy the launcher for the tool to the appropriate locations
cp /vagrant/DesktopFiles/rubric-launcher.desktop /usr/share/applications/
chmod 777 /usr/share/applications/rubric-launcher.desktop
mkdir /home/vagrant/.config/autostart
cp /usr/share/applications/rubric-launcher.desktop /home/vagrant/.config/autostart/
cp /usr/share/applications/rubric-launcher.desktop /home/vagrant/Desktop/
chmod 777 /home/vagrant/Desktop/rubric-launcher.desktop

#Copy the launchers for the youtube links to the desktop
cp /vagrant/DesktopFiles/rubric-video.desktop /home/vagrant/Desktop/
cp /vagrant/DesktopFiles/rubric-demo.desktop /home/vagrant/Desktop/

#Copy the .txt files to the desktop
cp /vagrant/DesktopFiles/README.txt /home/vagrant/Desktop/
cp /vagrant/DesktopFiles/Installation.txt /home/vagrant/Desktop/
cp /vagrant/DesktopFiles/Licenses.txt /home/vagrant/Desktop/

#Create file links on desktop
ln -s $RHOME /home/vagrant/Desktop/
