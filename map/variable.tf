
variable "filename" {
  type    = list(string)
  default = ["default1.txt", "default2.txt", "default3.txt"]
}

variable "filename1" {
  type = map(string)
  default = {
    "defaultA.txt" = "Default content A"
    "defaultB.txt" = "Default content B"
    "defaultC.txt" = "Default content C"
  }
}

