# Deploy Jenkins on AWS EC2 Instance

## Table of content
- [Prerequisites](#prerequisites)
- [Download and install Jenkins](#download-and-install-jenkins)

## Prerequisites
1. An EC2 instance running Ubuntu.

## Download and install Jenkins
Update list of packages in package manager.
```
sudo apt update
sudo apt-get upgrade -y
```

Install Java and verify Installation of Java
```
sudo amazon-linux-extras install java-openjdk11 -y
java -version
```


Add the Jenkins repo.
```
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
```
Import a key file from Jenkins-CI to enable installation from the package.
```
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
```
```
sudo apt update
```
```
sudo apt-get install jenkins -y
```
Start Jenkins service.
```
sudo systemctl start jenkins
sudo systemctl status jenkins
```
You may want to view the initial password.
```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```


## Resources
- https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/
- https://www.jenkins.io/doc/book/installing/linux/#setup-wizard