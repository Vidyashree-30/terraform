resource "local_file" "f1" {
  count    = length(var.filename)
  filename = var.filename[count.index]
  content  = "This is from terraform"
}

resource "local_file" "f2" {
  for_each = var.filename1
  filename = each.key
  content  = each.value
}

