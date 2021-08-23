#!/bin/bash

sudo yum install java-1.8.0-openjdk -y   

sudo yum install java-1.8.0-openjdk-devel -y

java -version
sudo cp /etc/profile /etc/profile_backup
echo 'export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk' | sudo tee -a /etc/profile
sleep 1
echo 'export JRE_HOME=/usr/lib/jvm/jre' | sudo tee -a /etc/profile
sleep 1
source /etc/profile
sleep 1 && my-first-command && my-second-command
echo $JAVA_HOME

echo $JRE_HOME

source /etc/profile
