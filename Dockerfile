FROM tomcat:9-jdk8

MAINTAINER deegree TMC <tmc@deegree.org>

# set deegree version
ENV DEEGREE_VERSION 3.4.13

# remove default webapps
RUN rm -fr /usr/local/tomcat/webapps/*

EXPOSE 8080

# add deegree*.war and make it default webapp (ROOT.war)
# wget https://repo.deegree.org/content/repositories/public/org/deegree/deegree-webservices/3.4.13/deegree-webservices-3.4.13.war -O deegree.war
COPY deegree.war /usr/local/tomcat/webapps/ROOT.war

# run tomcat
CMD ["catalina.sh", "run"]
