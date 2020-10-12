# Overall
This is a test. This playbook intents to launch two CentOS on AWS EC2.  The goal is to install and configure Docker Swarm cluster.




# Prerequisites for the local machine
(1) These playbooks use Ansible version 2.9 (it is installed on the virtualenv)

(2) At the local machine, we need to install following:

- pip3 install ansible

- pip3 install boto

- pip3 install boto3

- pip3 install botocore

- pip3 install awscli

- pip3 install pyOpenSSL

- pip3 install pexpect

- pip3 install dnspython


# Prepare variables, and How to run the playbook .

Firstly, we will run the playbook in folder "1.provision-vm", then we will run the playbook in folder "2.config-nodes".

#### [At folder "1.provision-vm" ]


- In "vars-encrypted-aws-keys.yml" , prepares "AWS Access Key" and "AWS Secret Key" which are encrypted .

- In "vars-others.yml", some variable (key pair, vpc subnet id, group id)  needs to be prepared in order to specify the location of the VM.

- This playbook uses CentOS image from AWS Marketplace, so we have to subscribe it  ("CentOS 7" ,  By: ProComputers.com). 

    ##### (How to run ?)

- Run by this command , "ansible-playbook playbook-provision-vm.yml --ask-vault-pass"

#### [At folder "2.config-nodes"]

- In "vars-hosts.yml", public DNS(s) and private IP(s) need to be assigned here.

    ##### (How to run ?)

- Run by this command , "ansible-playbook -i vars-hosts.yml playbook-config-nodes.yml"




# Reference
- Course "Managing AWS with Ansible" from "A CLOUD GURU" .

- https://www.linuxtechi.com/install-docker-ce-centos-8-rhel-8/
