resource "local_file" "file" {
  filename = "pet_name.txt"
  content  = "this is implict dependency" 
}

resource "local_file" "file1"{
  filename = "new.txt"
  content  = local_file.file.id
}
