##
#
# Jenkins Master Image
# Modified: R. Alcazar 8/21/2018
#
##

FROM jenkins/jenkins:lts

# Create the log-dir
USER root
RUN touch /var/log/jenkins.log
RUN chown jenkins:jenkins /var/log/jenkins.log

# Environment variables
ENV JAVA_OPTS="-Xmx512m"
ENV JENKINS_OPTS=" --handlerCountMax=50 --logfile=/var/log/jenkins.log"

# Switch to Jenkins user
USER jenkins
