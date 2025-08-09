variable "filnamemap" {
  type = map(string)
  default = {
    name    = "a"
    address = "b"
  }
}

resource "local_file" "f8" {
  for_each = var.filnamemap

  filename = "${each.key}.txt"
  content  = each.value
}

