FROM amarreddy94/amartomcat
MAINTAINER amarnath
RUN mkdir /usr/local/tomcat/webapps/build/
RUN mkdir /usr/local/tomcat/webapps/build/static/
COPY $WORKSPACE/build/* /usr/local/tomcat/webapps/build/
COPY /usr/local/tomcat/webapps/build/css/* /usr/local/tomcat/webapps/build/static/
COPY /usr/local/tomcat/webapps/build/js/* /usr/local/tomcat/webapps/build/static/
EXPOSE 8080

