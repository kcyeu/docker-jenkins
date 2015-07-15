# docker-jenkins

![Jenkins 1.620](https://img.shields.io/badge/jenkins-1.620-brightgreen.svg)
![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)

Dockerized Jenkins CI.

## Usage

By default, JENKINS_HOME is set to `/var/docker-data1/jenkins`.

To run the container, do the following:

```
sudo docker run -d -p 8080:8080 --name jenkins kcyeu/jenkins
```

To mount a directory from your own host into a container.

```
sudo docker run -d -p 8080:8080 --name jenkins -v /var/docker-data1/jenkins:/var/docker-data1/jenkins kcyeu/jenkins
```
