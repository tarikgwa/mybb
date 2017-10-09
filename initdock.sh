#!/bin/bash

#Copy ansible playbook into ansile directory
cp -a /home/mybb/ansible /etc/ansible

#Run ansible playbook to provisioning the server with necessary packages
cd /etc/ansible
ansible-playbook -i "localhost," -c local pkg.yml -vvv

#Change  permissions of application files and directories.
cd /home/mybb/html
chmod 666 inc/config.php inc/settings.php inc/languages/english/*.php inc/languages/english/admin/*.php
chmod 777 cache/ cache/themes/ uploads/ uploads/avatars/ admin/backups/

#Build and ship the mybb application by docker compose
cd /home/mybb/docker
docker-compose up -d

