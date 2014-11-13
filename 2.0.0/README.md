# Docker image for JBoss Overlord RTGov
This docker image will install a RTGov server on top of an [EAP server][jboss_eap].

## RTGov requirements
RTGov server requires one of the "full" profiles. Take it into account if you change the default profile.

## Build steps
Just "docker build"

## Installation details
* OS user: __jboss__
* HOME: __/opt/jboss__
* EAP_HOME; __/opt/jboss/jboss-eap-6.3__
* EAP_USER: __admin/admin123!__

By default, management and service interfaces bound to __0.0.0.0__

Profile run by default: __standalone-full.xml__

[jboss_eap]: https://github.com/jorgemoralespou/docker-jboss-eap
