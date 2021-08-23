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

wget https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.70/bin/apache-tomcat-8.5.70.tar.gz
sleep 3
echo "Unpacking Tomcat installer tarball.......";
sudo tar -zxvf apache-tomcat-8.5.70.tar.gz;
sleep 2s;
echo "Tomcat tarball unpacked.";

echo"now going to directory /root/apache-tomcat-8.5.70/bin"

cd apache-tomcat-8.5.70/bin;

echo "Create soft link to start/stop tomcat service"

ln -s /root/apache-tomcat-8.5.70/bin/startup.sh /etc/init.d/tomcatstart
ln -s /root/apache-tomcat-8.5.70/bin/shutdown.sh /etc/init.d/tomcatstop

echo "Content.xml should be modified in below files"

cd ~
wget https://raw.githubusercontent.com/hitman-045/tomcatinstall/master/manager-METAINF
mv -f manager-METAINF apache-tomcat-8.5.70/webapps/manager/META-INF/context.xml

cd ~
wget https://raw.githubusercontent.com/hitman-045/tomcatinstall/master/host-manager-METAINF-context.xml
mv -f host-manager-METAINF-context.xml  apache-tomcat-8.5.70/webapps/host-manager/META-INF/context.xml

echo "editing tomcat-users.xml"

cd ~
wget https://raw.githubusercontent.com/hitman-045/tomcatinstall/master/tomcat-users.xml
mv -f tomcat-users.xml apache-tomcat-8.5.70/conf/tomcat-users.xml

/etc/init.d/tomcatstart
