#
FROM jmorales/jboss-eap:6.3.0

ENV RTGOV_VERSION 2.0.0.Final

ADD files/apache-ant-1.9.4-bin.tar.gz /home/jboss/
ADD files/overlord-rtgov-$RTGOV_VERSION.zip /tmp/

ENV ANT_HOME /home/jboss/apache-ant-1.9.4

RUN unzip /tmp/overlord-rtgov-$RTGOV_VERSION.zip -d /tmp

RUN ${ANT_HOME}/bin/ant -f /tmp/overlord-rtgov-$RTGOV_VERSION/build.xml -Dplatform=eap6 -Dtype=all -Dpath=/home/jboss/jboss-eap-6.3 -Doverlord-commons.admin.password=admin123!

ENTRYPOINT ["/home/jboss/jboss-eap-6.3/bin/standalone.sh"]
CMD ["-c", "standalone-full.xml"]
