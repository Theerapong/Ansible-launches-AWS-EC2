## Overall
This is a test. This playbook intents to launch two CentOS on AWS EC2.  The goal is to install and configure Docker Swarm cluster.


## Prepare variables and others
(1) We can change the size and location of VMs in this file at "variables/var.yml". 

(2) The keys (ec2_access_key and ec2_secret_key) which are used to access Amazon AWS for the IAM user, are encrypted in "/variables/encrypt-iam-account.yml". So, we can change to be other IAM accounts.

(3) This playbook uses CentOS image from AWS Marketplace, so we have to subscribe it before run playbook.

## How to run ?
ansible-playbook playbook.yml --ask-vault-pass


## Prerequisite for this Playbook
(1) This playbook uses Ansible version 2.9

(2)At the local machine, we need to install following:

pip3 install ansible

pip3 install boto

pip3 install boto3

pip3 install botocore

pip3 install awscli

pip3 install pyOpenSSL

pip3 install pexpect

pip3 install dnspython


## Reference
(1) Course "Managing AWS with Ansible" from "A CLOUD GURU" .

(2) https://www.linuxtechi.com/install-docker-ce-centos-8-rhel-8/
