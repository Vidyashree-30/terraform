resource "local_file" "file_c" {
  filename = "c_output.txt"
  content  = "This is file C created by Terraform."
}

