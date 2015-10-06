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
ENV JENKINS_VER 1.632
ENV DOCKER_COMPOSE_VER 1.4.0

# Latest see http://mirrors.jenkins-ci.org/war/?C=N;O=D
ADD http://mirrors.jenkins-ci.org/war/${JENKINS_VER}/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war

ADD https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VER}/docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]

