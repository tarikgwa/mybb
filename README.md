MYBB Forum Application

# mybb version 1.8.12 application dockerized with docker and build/run/ship by docker-compose.
The latest MyBB release.
Provisionning the Server by Ansibe.

*****Installation Instruction*****

Execute these commands:

==================

sudo apt-get update

sudo apt-get -y install git ansible

sudo git clone https://github.com/tarikgwa/mybb.git /home/mybb

cd /home/mybb

sudo chmod 755 initdock.sh

sudo sh initdock.sh

==================

*Open the endpoint or public ip into the browser and enjoy it !*

FYI: If you want to deploy the DB into AWS RDS or into MYSQL Server instead of docker container update the hostname,username and password variables in ansible group_vars with the new configurations of the DB server.

By:
**Tarik Abouali**
