variable "filename" {
  type = list(string)
  default = ["abc1.txt", "abc2.txt", "abc3.txt"]
}

variable "filename1" {
  type = map(string)
  default = {
    "vid.txt"  = "this is from A",
    "gana.txt" = "this is from B",
    "xyz.txt"  = "this is from C"
  }
}

