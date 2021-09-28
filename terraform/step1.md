Wait for the Terraform to be installed

## Create local plugin folder
`mkdir -p ~/.terraform.d/plugins/github.com/keeper-security/keeper`{{execute}}

## Download terraform provider
`wget https://github.com/Keeper-Security/terraform-provider-keeper/releases/download/v0.1.2/terraform-provider-keeper_0.1.2_linux_amd64.zip --directory-prefix ~/.terraform.d/plugins/github.com/keeper-security/keeper`{{execute}}

