# tomcatinstall-use this steps to install tomcat with all resources we need like tomcat-users.xml.

#!bin/bash
sudo -i;
wget https://raw.githubusercontent.com/hitman-045/tomcatinstall/master/tomcat.sh;
chmod +x tomcat.sh;
sh tomcat.sh;
sleep 4
/etc/init.d/tomcatstart
