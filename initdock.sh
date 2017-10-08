#!/bin/bash
cp /home/mybb/docker.yml /etc/ansible 
cd /etc/ansible ansible-playbook -i "localhost," -c local docker.yml -vvv 
sudo apt-get -y install python-pip 
sudo pip install docker-compose 
cd /home/mybb/docker 
sudo docker-compose up -d
