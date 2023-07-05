FROM tomcat:8.0.20-jre8

RUN chgrp -R 0 /var/ && \
    chmod -R g=u /var/

COPY target/01-maven-web-app*.war /usr/local/tomcat/webapps/maven-web-app.war
