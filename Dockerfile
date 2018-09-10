FROM tomcat:7-jre8

ENV spring.profiles.active=dev 
ENV CATALINA_OPTS="-Denvironment.properties.location=/usr/local/tomcat/conf/oscar_mcmaster.properties -Djava.util.logging.config.file=/usr/local/tomcat/conf/logging-servlet.properties"

COPY code /usr/local/tomcat/conf
COPY oscar/target/oscar-14.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/oscar_mcmaster.war

CMD ["catalina.sh", "run"]
