resource "local_file" "file1" {
  filename = "file1.txt"
  content  = "This is file 1 created by Terraform."
}

resource "local_file" "file2" {
  filename = "file2.txt"
  content  = "This is file 2 created by Terraform."
}

resource "local_file" "file3" {
  filename = "file3.txt"
  content  = "This is file 3 created by Terraform."
}

