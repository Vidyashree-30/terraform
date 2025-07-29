resource "local_file" "file1" {
  filename = "file1.txt"
  content  = "this is from github"
}

resource "local_file" "file2" {
  filename = "file2.txt"
  content  = "this is from github"
}
resource "local_file" "filename" {
  filename = "example.txt"
  content  = "This is a test file"
}
