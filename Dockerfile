##
#
# Jenkins Master Image
# Modified: R. Alcazar 8/23/2018
#
##

FROM jenkins/jenkins:lts
LABEL maintainer=ricardo.d.alcazar@gmail.com

# Environment variables
#ENV JAVA_OPTS="-Xmx512m -Djenkins.install.runSetupWizard=false"
ENV JENKINS_OPTS=" --handlerCountMax=50 --logfile=/var/log/jenkins.log"

# Create the log-dir
USER root
RUN touch /var/log/jenkins.log
RUN chown jenkins:jenkins /var/log/jenkins.log

# install plugins script
COPY install-plugins.sh /usr/local/bin/install-plugins.sh
RUN chmod +x /usr/local/bin/install-plugins.sh

# Install default plug-ins
COPY plugins.txt /tmp/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /tmp/plugins.txt

USER jenkins
