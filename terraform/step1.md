Wait for the Terraform to be installed

## Create local plugin folder
`mkdir -p ~/.terraform.d/plugins/github.com/keeper-security/keeper`{{execute}}

## Download KSM Terraform provider file
`wget https://github.com/Keeper-Security/terraform-provider-keeper/releases/download/v0.1.3/terraform-provider-keeper_0.1.3_linux_amd64.zip --directory-prefix ~/.terraform.d/plugins/github.com/keeper-security/keeper`{{execute}}

