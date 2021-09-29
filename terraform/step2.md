
Create script file
`touch main.tf`{{execute}}


Open file in Editor:
`main.tf`{{open}}


```
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    keeper = {
      source  = "github.com/keeper-security/keeper"
      version = ">= 0.1.0"
    }
  }
}

provider "keeper" {
  credential = "<CONFIG JSON or BASE64>"
  # credential = file("~/.keeper/credential")
}

data "keeper_secret_login" "kc-secret" {
  path       = "<UID TO LOGIN TYPE RECORD>" # QabbPIdM8Unw4hwVM-F8VQ
}

output "kc_secret_login" {
  value = data.keeper_secret_login.kc-secret.login
}

output "kc_secret_password" {
  value = data.keeper_secret_login.kc-secret.password
  sensitive = true
}
```{{copy}}

Inialize Terraform
`terraform init`{{execute}}

Execute Terraform steps
`terraform apply -auto-approve`{{execute}}

View terraform state file
`terraform.tfstate`{{open}}

Check for changes (will notify that no changes were made):
`terraform plan`{{execute}}

Modify login name, password or both in Keeper Vault for the record provided in terraform file OR modify in the `terraform.tfstate`{{open}} file. Then check for changes with `terraform plan`{{execute}} and apply new changes using `terraform apply -auto-approve`{{execute}}


<pre class="file" data-filename="app.js" data-target="replace">
WHATEVER CODE
</pre>