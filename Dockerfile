FROM amarreddy94/amartomcat
MAINTAINER amarnath

COPY $WORKSPACE/build /usr/local/tomcat/webapps
EXPOSE 8080

