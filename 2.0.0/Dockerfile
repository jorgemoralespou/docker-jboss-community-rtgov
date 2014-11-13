#
FROM jmorales/jboss-eap:6.3.0

ENV RTGOV_VERSION 2.0.0.Final

RUN cd /tmp \
    && curl http://mirrors.ukfast.co.uk/sites/ftp.apache.org/ant/binaries/apache-ant-1.9.4-bin.tar.gz | bsdtar -zxvf- \
    && curl http://downloads.jboss.org/overlord/rtgov/overlord-rtgov-$RTGOV_VERSION.zip | bsdtar -xvf- \
    && /tmp/apache-ant-1.9.4/bin/ant -f /tmp/overlord-rtgov-$RTGOV_VERSION/build.xml -Dplatform=eap6 -Dtype=all -Dpath=$EAP_HOME -Doverlord-commons.admin.password=admin123! \
    && rm -rf /tmp/apache-ant-1.9.4 && rm -rf /tmp/overlord-rtgov-$RTGOV_VERSION && rm -rf $EAP_HOME/standalone/tmp && rm -rf $EAP_HOME/standalone/data/content

# ENTRYPOINT ["/opt/jboss/jboss-eap-6.3/bin/standalone.sh"] # Coming from base
CMD ["-c", "standalone-full.xml"]
