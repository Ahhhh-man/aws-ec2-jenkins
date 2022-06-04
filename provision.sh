sudo apt update
sudo apt-get upgrade -y

# Install jdk
sudo apt install openjdk-11-jdk -y
java -version

# Install jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo add-apt-repository universe
sudo apt-get install jenkins -y

# Start up the jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

# Show me the password 
# sudo cat /var/lib/jenkins/secrets/initialAdminPassword
