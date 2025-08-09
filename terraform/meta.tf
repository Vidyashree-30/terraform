resource "local_file" "f3" {
  filename = "123.txt"
  content  = "test"
}
resource "local_file" "f2" {
  filename = "12325.txt"
  content  = local_file.f3.id
}
resource "local_file" "f4" {
  filename = local_file.f2.id
  content  = local_file.f3.id

}


