
Create script file
`touch main.tf`{{execute}}


Open file in Editor:
`main.tf`{{open}}


QabbPIdM8Unw4hwVM-F8VQ


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

`terraform init`{{execute}}

`terraform apply -auto-approve`{{execute}}
