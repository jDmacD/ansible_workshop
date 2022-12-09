ssh-keygen -t rsa -q -f /home/ubuntu/.ssh/ansible_id_rsa -N ""

sudo apt-get install openjdk-11-jdk -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y jenkins
sudo systemctl start jenkins.service

sudo mkdir /home/jenkins/.ssh
sudo cp .ssh/id_rsa.pub /home/jenkins/.ssh/id_rsa.pub
sudo chown jenkins:jenkins /home/jenkins/.ssh/id_rsa.pub