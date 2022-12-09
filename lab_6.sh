apt update 
apt install -y software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install -y ansible
apt install python3-pip git pwgen unzip vim
pip3 install pip --upgrade
pip3 install requests==2.14.2
pip3 install docker-compose