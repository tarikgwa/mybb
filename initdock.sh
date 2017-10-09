#!/bin/bash

#Copy ansible playbook into ansile directory
cp /home/mybb/pkg.yml /etc/ansible

#Run ansible playbook to provisioning the server with necessary packages
cd /etc/ansible
ansible-playbook -i "localhost," -c local pkg.yml -vvv

#Build and ship the mybb application by docker compose
cd /home/mybb/docker
docker-compose up -d

