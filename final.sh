# tomcatinstall-use this steps to install tomcat with all resources we need like tomcat-users.xml.

#!bin/bash
sudo -i
wget https://raw.githubusercontent.com/hitman-045/tomcatinstall/master/java.sh 
wget https://raw.githubusercontent.com/hitman-045/tomcatinstall/master/tomcat.sh
chmod +x java.sh
chmod +x tomcat.sh
sh /java.sh
source /etc/profile
sleep 1
source /etc/profile
sleep 1
echo $JAVA_HOME
echo $JRE_HOME
sh tomcat.sh
