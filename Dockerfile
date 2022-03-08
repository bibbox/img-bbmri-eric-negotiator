FROM tomcat:9.0.10-jre8-alpine

#ADD tomcat-users.xml    /usr/local/tomcat/conf/
#ADD server.xml          /usr/local/tomcat/conf/
ADD setenv.sh           /usr/local/tomcat/bin

RUN adduser -D -g '' negotiator

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]

ADD bbmri-negotiator.war /usr/local/tomcat/webapps/ROOT.war

ADD scripts /scripts
WORKDIR /scripts
RUN chmod a+x *.sh

ADD uploads /uploads
RUN chmod 766 /uploads

ENTRYPOINT ["/scripts/entrypoint.sh"]
