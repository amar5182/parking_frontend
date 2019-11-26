FROM tomcat
MAINTAINER amarnath
WORKDIR /opt
RUN apt-get update -y
RUN apt-get upgrade -y
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
EXPOSE 8080

