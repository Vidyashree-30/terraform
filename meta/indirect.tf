# File A
resource "local_file" "file_a" {
  filename = "a.txt"
  content  = "This is file A"
}

# File B
resource "local_file" "file_b" {
  filename = "b.txt"
  content  = "This is file B"
}

# File C
resource "local_file" "file_c" {
  filename = "c.txt"
  content  = "This is file C"
}

# File MAIN that depends on A, B, and C (explicit dependency)
resource "local_file" "file_main" {
  filename = "main.txt"
  content  = "This is the main file, and it explicitly depends on file A, B, and C."

  depends_on = [
    local_file.file_a,
    local_file.file_b,
    local_file.file_c
  ]
}

