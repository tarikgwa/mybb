#!/bin/bash

#Copy ansible playbook into ansile directory
cp -a /home/mybb/ansible/* /etc/ansible

#Run ansible playbook to provisioning the server with necessary packages
cd /etc/ansible
ansible-playbook -i "localhost," -c local pkg.yml --tag 'pkg,compose,conf,set,db,imp' -vvv

#Change  permissions of application files and directories.
cd /home/mybb/html
chmod 666 inc/config.php inc/settings.php inc/languages/english/*.php inc/languages/english/admin/*.php
chmod 777 cache/ cache/themes/ uploads/ uploads/avatars/ admin/backups/

#Build and ship the mybb application and mybb DB by docker compose
cd /home/mybb/docker
docker-compose -f docker-compose-db.yml up -d

sleep 10

#import the MybbDB into the DB in Database container 
sh /home/mybb/importdb.sh

echo done
