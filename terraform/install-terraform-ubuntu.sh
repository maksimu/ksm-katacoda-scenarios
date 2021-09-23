

# Install Terraform CLI in Ubuntu
# Source: https://learn.hashicorp.com/tutorials/terraform/install-cli

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

# Add the HashiCorp GPG key.
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Add the official HashiCorp Linux repository.
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Update to add the repository, and install the Terraform CLI.
sudo apt-get update && sudo apt-get install terraform

# Enable tab completion
touch ~/.bashrc
terraform -install-autocomplete





# wget https://file.io/IlyJt3yQBsdh

# mkdir -p ~/.terraform.d/plugins/github.com/keeper/keeper

# mv terraform-provider-keeper_1.0.0_linux_amd64.zip ~/.terraform.d/plugins/github.com/keeper/keeper

# terraform init

# terraform apply -auto-approve




