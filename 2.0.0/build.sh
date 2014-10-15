#!/bin/bash

if [ ! -f files/apache-ant-1.9.4-bin.tar.gz ]
then
   wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/ant/binaries/apache-ant-1.9.4-bin.tar.gz -P files
fi
[ ! -f files/apache-ant-1.9.4-bin.tar.gz ] && echo "No ant (apache-ant-1.9.4-bin.tar.gz) available in files dir" && exit 255


if [ ! -f files/overlord-rtgov-2.0.0.Final.zip ]
then
   wget http://downloads.jboss.org/overlord/rtgov/overlord-rtgov-2.0.0.Final.zip -P files
fi
[ ! -f files/overlord-rtgov-2.0.0.Final.zip ] && echo "No DTGov (overlord-rtgov-2.0.0.Final.zip) available in files dir" && exit 255

docker build --rm -t jmorales/rtgov-server:2.0.0  .

