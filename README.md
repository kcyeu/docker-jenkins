# docker-jenkins

Dockerized Jenkins CI.

## Usage

By default, JENKINS_HOME is set to `/var/docker-data1/jenkins`.

To run the container, do the following:

```
sudo docker run -d -p 8080:8080 --name jenkins kcyeu/jenkins
```

To mount a directory from your own host into a container.

```
sudo docker run -d -p 8080:8080 --name jenkins -v /var/jenkins:/var/docker-data1/jenkins kcyeu/jenkins
```
