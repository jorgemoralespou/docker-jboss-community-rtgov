#
FROM jmorales/fsw

USER jboss

ENV EAP_HOME /home/jboss/jboss-eap-6.1

RUN rm -rf ${EAP_HOME}/standalone/deployments/overlord-rtgov-ui.war
ADD files/overlord-rtgov-fsw60.war ${EAP_HOME}/standalone/deployments/
ADD files/overlord-rtgov-ui-fsw60.war ${EAP_HOME}/standalone/deployments/
ADD files/overlord-rtgov.properties ${EAP_HOME}/standalone/configuration/
ADD files/overlord-rtgov-elasticsearch.properties ${EAP_HOME}/standalone/configuration/

ENTRYPOINT ["/home/jboss/jboss-eap-6.1/bin/standalone.sh"]
CMD []
