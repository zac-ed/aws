#!/bin/bash
## Sets up dev env for AWS CLI user: ##

sudo dnf update 
sudo dnf install stress-ng awscli2 python3-devel jq python3-yq ansible htop iftop podman podman-compose

	## Helps you spin up AMI stuff: ##
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager addrepo --from-repofile=https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf -y install packer

	## 	Terraform install 	##
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager addrepo --from-repofile=https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf -y install terraform 
	##################################


# sudo dnf install python3 python3-virtualenv python3-pip # << on my machine: already installed #


	## 	I hate pip so much,	 ##
	## but I know why I must do this ##
python3 -m venv my_aws
source my_aws/bin/activate

pip install boto3 botocore ansible
deactivate
	## ^ Stupid system breakages, ^ ##
	## I've totally never done that ##
