#!/bin/bash

set -e

# Install Terraform CLI in Ubuntu
# Source: https://learn.hashicorp.com/tutorials/terraform/install-cli
apt update -y || true
# apt-get install -y curl
# apt-get install -y gnupg 
apt install -y software-properties-common || true

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - || true
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" || true

# Update to add the repository, and install the Terraform CLI.
apt update -y || true
echo "2"
apt install -y terraform || true
echo "3"

# echo "Terraform was installed" >> /opt/.backgroundfinished




# wget https://file.io/IlyJt3yQBsdh

# mkdir -p ~/.terraform.d/plugins/github.com/keeper/keeper

# mv terraform-provider-keeper_1.0.0_linux_amd64.zip ~/.terraform.d/plugins/github.com/keeper/keeper

# terraform init

# terraform apply -auto-approve




