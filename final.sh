#!bin/bash
sudo -i
wget https://raw.githubusercontent.com/hitman-045/tomcatinstall/master/java.sh 

chmod +x java.sh

./java.sh
source /etc/profile
sleep 1
source /etc/profile
sleep 1
echo $JAVA_HOME
echo $JRE_HOME
wget https://raw.githubusercontent.com/hitman-045/tomcatinstall/master/tomcat.sh
chmod +x tomcat.sh
./tomcat.sh
