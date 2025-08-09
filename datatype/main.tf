resource "local_file" "f1" {
  filename = var.filename1
  content  = var.content
}

resource "local_file" "f2" {
  filename = var.filename2
  content  = var.content
}

resource "local_file" "f3" {
  filename = tostring(var.filename3)
  content  = var.content
}

resource "local_file" "f4" {
  filename = tostring(var.filename4)
  content  = var.content
}

