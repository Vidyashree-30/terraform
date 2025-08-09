provider "local" {}

# 1. Resource with create_before_destroy
resource "local_file" "file_cbd" {
  filename = "cbd.txt"
  content  = "This file is created before old one is destroyed"

  lifecycle {
    create_before_destroy = true
  }
}

# 2. Resource with prevent_destroy
resource "local_file" "file_lock" {
  filename = "locked.txt"
  content  = "This file cannot be destroyed"

  lifecycle {
    prevent_destroy = true
  }
}

# 3. Resource with ignore_changes (content changes ignored)
resource "local_file" "file_ignore" {
  filename = "ignore.txt"
  content  = "This content change will be ignored"

  lifecycle {
    ignore_changes = [content]
  }
}



