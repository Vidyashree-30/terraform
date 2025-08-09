resource "local_file" "filecreateion" {
  filename = var.filename
  content  = var.content
}


resource "local_file" "filecreateion1" {
  filename = local.filename
  content  = local.content
}

output "str" {
  value = local_file.filecreateion.id
}

locals {
  filename = "test-1234"
  content  = "a123"
}


variable "filename" {
  default = "abc324562.txt"
}

variable "content" {
  default = "content from default"
}

