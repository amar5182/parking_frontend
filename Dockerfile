FROM amarreddy94/amartomcat
MAINTAINER amarnath
RUN mkdir /usr/local/tomcat/webapps/build/
RUN mkdir /usr/local/tomcat/webapps/build/static/
RUN mkdir /usr/local/tomcat/webapps/build/static/css/
RUN mkdir /usr/local/tomcat/webapps/build/static/js/
COPY $WORKSPACE/build/* /usr/local/tomcat/webapps/build/
COPY /usr/local/tomcat/webapps/build/css/*.css /usr/local/tomcat/webapps/build/static/css/
COPY /usr/local/tomcat/webapps/build/js/*.js /usr/local/tomcat/webapps/build/static/js/
EXPOSE 8080

