resource "local_file" "filename" {
  count    = length(var.filename)
  filename = var.filename[count.index]
  content  = "this is executed from different workspace"
}

resource "local_file" "filename1" {
  for_each = var.filename1
  filename = each.key
  content  = each.value
}
