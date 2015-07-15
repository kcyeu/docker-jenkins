FROM kcyeu/ubuntu:latest
MAINTAINER Kuo-Cheng Yeu <kmd@mikuru.tw>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update && apt-get -qqy install \ 
    ant \
    openjdk-7-jre-headless \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/docker-data1/jenkins
ENV JENKINS_HOME /var/docker-data1/jenkins
ENV JENKINS_VER 1.620

# Latest see http://mirrors.jenkins-ci.org/war/?C=N;O=D
ADD http://mirrors.jenkins-ci.org/war/${JENKINS_VER}/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]

