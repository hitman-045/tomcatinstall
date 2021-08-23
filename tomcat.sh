#!/bin/bash
#Apache Tomcat Installer Script

sudo -i;
wget https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.70/bin/apache-tomcat-8.5.70.tar.gz

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



