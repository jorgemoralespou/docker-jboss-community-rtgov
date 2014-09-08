#!/bin/bash

if [ ! -f files/apache-ant-1.9.4-bin.tar.gz ]
then
   wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/ant/binaries/apache-ant-1.9.4-bin.tar.gz -P files
fi
[ ! -f files/apache-ant-1.9.4-bin.tar.gz ] && echo "No ant (apache-ant-1.9.4-bin.tar.gz) available in files dir" && exit 255


#if [ ! -f files/overlord-rtgov-2.0.0.Beta3.zip ]
#then
#   wget http://downloads.jboss.org/overlord/rtgov/overlord-rtgov-2.0.0.Beta3.zip -P files
#fi
#[ ! -f files/overlord-rtgov-2.0.0.Beta3.zip ] && echo "No DTGov (overlord-rtgov-2.0.0.Beta3.zip) available in files dir" && exit 255

if [ ! -f files/overlord-rtgov-ui-fsw60.war ]
then
   wget https://repository.jboss.org/nexus/service/local/repositories/thirdparty-releases/content/org/overlord/rtgov/ui/overlord-rtgov-ui-fsw60/2.0.0.Beta3/overlord-rtgov-ui-fsw60-2.0.0.Beta3.war -P files -O overlord-rtgov-ui-fsw60.war
fi
[ ! -f files/overlord-rtgov-ui-fsw60.war ] && echo "No rtgov-ui (overlord-rtgov-ui-fsw60.war) available in files dir" && exit 255

if [ ! -f files/overlord-rtgov-fsw60.war ]
then
   wget https://repository.jboss.org/nexus/service/local/repositories/thirdparty-releases/content/org/overlord/rtgov/overlord-rtgov-fsw60/2.0.0.Beta3/overlord-rtgov-fsw60-2.0.0.Beta3.war -P files -O overlord-rtgov-fsw60.war
fi
[ ! -f files/overlord-rtgov-fsw60.war ] && echo "No rtgov (overlord-rtgov-fsw60.war) available in files dir" && exit 255

docker build --rm -t jmorales/jboss.org-rtgov:2.0.0  .

