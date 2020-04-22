# This is an Sample CICD project for JAVA Web Application used for Wezva Technologies
# Author: Adam M
# Email: scmlearningcentre@gmail.com
# Phone: 9739110917
# www.wezva.com

FROM jboss/wildfly
ADD target/samplewar.war /opt/jboss/wildfly/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
