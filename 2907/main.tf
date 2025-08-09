
resource "local_file" "f8" {
  count    = length(var.filename)
  filename = var.filename[count.index]
  content  = "test"
}


resource "local_file" "f9" {
  for_each = toset(var.filename1)
  filename = each.value
  content  = "test"
}

