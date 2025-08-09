
variable "filename" {
  type    = list(string)
  default = ["a", "b", "c"]
}


resource "local_file" "f8" {
  count    = length(var.filename)                  
  filename = "${var.filename[count.index]}.txt"    
  content  = "test"
}


variable "filename1" {
  type    = list(string)
  default = ["a1", "b1", "c1"]
}


resource "local_file" "f9" {
  for_each = toset(var.filename1)                 
  filename = "${each.value}.txt"                   
  content  = "test"
}

