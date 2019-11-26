FROM amarreddy94/amartomcat
MAINTAINER amarnath
RUN mkdir /usr/local/tomcat/webapps/build
COPY $WORKSPACE/build/* /usr/local/tomcat/webapps/build/
EXPOSE 8080

