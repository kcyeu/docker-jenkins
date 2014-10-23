FROM kcyeu/ubuntu:latest
MAINTAINER Kuo-Cheng Yeu <kmd@mikuru.tw>

RUN apt-get -qq update && apt-get -qqy install \ 
    openjdk-7-jre-headless

RUN mkdir -p /var/docker-data1/jenkins
ENV JENKINS_HOME /var/docker-data1/jenkins

ADD http://mirrors.jenkins-ci.org/war/1.585/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]

