FROM openjdk:8 as builder

RUN mkdir -p /home && \
    cd /home 

COPY . /home
WORKDIR /home/oscar
RUN /home/build.sh

FROM tomcat:7-jre8 as ship

COPY --from=builder /home/oscar/target/oscar-14.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/oscar_mcmaster.war
# COPY code/oscar/target/oscar-14.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/oscar_mcmaster.war
# ADD code/oscar/target /usr/local/tomcat/webapps
ADD conf /usr/local/tomcat/conf

ENV JDBC_URL=jdbc:mysql://db:3306/oscar_mcmaster?autoReconnect=true&zeroDateTimeBehavior=round&useOldAliasMetadataBehavior=true&jdbcCompliantTruncation=false
ENV JDBC_USER=root
ENV JDBC_PASS=liyi

EXPOSE 8080

CMD ["catalina.sh", "run"]