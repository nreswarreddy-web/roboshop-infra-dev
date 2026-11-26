#!/bin/bash
set -ex
component=$1
environment=$2
dnf install ansible -y
cd /home/ec2-user
if [ ! -d roboshop-ansible-v3 ]; then
    git clone https://github.com/nreswarreddy-web/roboshop-ansible-v3.git
fi
cd roboshop-ansible-v3
git pull # when you are running for 2nd time, if there is any change in repo we can pull the changes
pwd
ls -ltr
ansible-playbook -e component=$component -e env=$environment main.yaml