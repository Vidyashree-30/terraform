resource "local_file" "file_b" {
  filename = "b_output.txt"
  content  = "This is file B created by Terraform."
}

