#!/bin/bash

yum install ansible -y
cd /tmp
git clone https://github.com/devopsdevopsaws/roboshopansible.git
cd roboshopansible
ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 mongodb.yaml 

ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 redis.yaml

ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 mysql.yaml

ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 rabbitmq.yaml

ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 catalogue.yaml

ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 user.yaml

ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 cart.yaml

ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 shipping.yaml

ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 payment.yaml

ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 web.yaml  