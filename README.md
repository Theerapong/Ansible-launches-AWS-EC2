## Overall
This is a test,  "Access Key ID" and "Secret Access Key" want to show in the encrypted file . Although, the keys must not be here in public.


## Prepare variables
(1) We can change type of VMs and location of VMs in this file at folder "variables", in file "var.yml". 

(2) In face, there is file "keypair-for-ansible.pem" which is used for SSH, but not in GitHub.

(3) The keys (ec2_access_key and ec2_secret_key) which is used to access Amazon AWS for this IAM user are encrypted in "/variables/encrypt-iam-account.yml".

## How to run .
ansible-playbook playbook.yml --ask-vault-pass


## Reference
(1) Course "Managing AWS with Ansible" from "A CLOUD GURU" .
(2) https://www.linuxtechi.com/install-docker-ce-centos-8-rhel-8/
