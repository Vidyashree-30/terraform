data "local_file" "d1" {
  filename = "/home/vid/batch11/gana.txt"
}

resource "local_file" "f1" {
  filename = "a1.txt"
  content  = data.local_file.d1.content
}

