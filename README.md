## Overall
This is a test. This playbook will launch CentOS on EC2 (1 instance or more than 1).  The goal is to install and configure Docker .


## Prepare variables
(1) We can change type of VMs and location of VMs in this file at "variables/var.yml". 

(2) In fact, there is file "keypair-for-ansible.pem" which is used for SSH, but not in GitHub.

(3) The keys (ec2_access_key and ec2_secret_key) which are used to access Amazon AWS for this IAM user, are encrypted in "/variables/encrypt-iam-account.yml". So, we can change to be other IAM accounts.

## How to run 
ansible-playbook playbook.yml --ask-vault-pass


## Prerequisite for this Playbook
At the local machine

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
