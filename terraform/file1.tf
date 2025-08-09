resource "local_file" "file_a" {
  filename = "a_output.txt"
  content  = "This is file A created by Terraform."
}
