#!/bin/bash

#Script by Casey, Feb 2023

#Change user to vagrant
#su - vagrant

#Install Java 11
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y

#Install wget
sudo yum install wget -y

#Download SonarQube
cd /opt
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

#Install unzip
sudo yum install unzip -y

#Unzip SonarQube
sudo unzip /opt/sonarqube-9.3.0.51899.zip

#Change permissions
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

#Start service
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64 
./sonar.sh start

#Done
