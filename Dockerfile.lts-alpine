##
#
# Jenkins Master Image
# Modified: R. Alcazar 8/20/2018
#
##

FROM jenkins/jenkins:lts-alpine

# CREATE THE LOG-DIR
USER root
RUN touch /var/log/jenkins.log
RUN chown jenkins:jenkins /var/log/jenkins.log
USER jenkins

# Environment variables
ENV JAVA_OPTS="-Xmx512m"
ENV JENKINS_OPTS=" --handlerCountMax=50 --logfile=/var/log/jenkins.log"
