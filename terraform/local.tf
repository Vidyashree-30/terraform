variable "secret_password" {
  description = "Sensitive password value"
  type        = string
  sensitive   = true
  default     = "My$ecretP@ssw0rd!" # In real use, do not hardcode this
}

resource "local_file" "secret_file" {
  filename        = "${path.module}/secret.txt"
  content         = "Your secret password is: ${var.secret_password}"
  file_permission = "0600" # restrict access to owner only
}

output "file_written" {
  value     = "File created at: ${local_file.secret_file.filename}"
  sensitive = false
}
