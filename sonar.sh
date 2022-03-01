#!/bin/bash
#Author: Susana Asiedu
#Date: February 22nd 2022
#Description: Installation of Sonarqube on centos7

echo "Sonarqube installation in progress....."
sleep 3
sudo yum update -yum
sudo yum install java-11-openjdk-devel java-11-openjdk wget unzip net-tools -y
cd /opt  
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
echo
echo "Installation done succesfully !"
echo "System starting sonarqube now..."
sleep 2
echo "System in the process of retrieving current ip adress..."
sleep 2
echo "Below is the ip adress :"
sudo ifconfig | grep 192.


#NB: Some servers have firewall enabled. So if you are not able to connect from the 
#browser, then you might want to open the port 9000 with this command

#Delete the pound sign at the begining of both command below
#Proceed by running the program again

#sudo firewall-cmd --permanent --add-port=9000/tcp
#sudo firewall-cmd --reload
