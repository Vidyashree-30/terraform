resource "random_password" "secure_pwd" {
  length  = 16
  upper   = true
  lower   = true
  numeric = true
  special = true
}

output "generated_password" {
  value     = random_password.secure_pwd.result
  sensitive = true
}

