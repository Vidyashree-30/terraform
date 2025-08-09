# This block reads from a local file
data "local_file" "d1" {
  filename = "/home/vid/batch11/gana.txt"
}

# This block creates a new file using the content from the data source above
resource "local_file" "f1" {
  filename = "vid.txt"
  content  = data.local_file.d1.content
}

