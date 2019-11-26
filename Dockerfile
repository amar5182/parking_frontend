FROM amarreddy94/amartomcat
MAINTAINER amarnath
RUN mkdir /usr/local/tomcat/webapps/build/
RUN mkdir /usr/local/tomcat/webapps/build/static/
COPY $WORKSPACE/build/* /usr/local/tomcat/webapps/build/
COPY $WORKSPACE/build/static/* /usr/local/tomcat/webapps/build/static
EXPOSE 8080

