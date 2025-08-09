variable "min" {
  type    = number
  default = 100
}

variable "max" {
  type    = number
  default = 9999
}

resource "random_integer" "my_int" {
  min = var.min
  max = var.max
}

output "random_int" {
  value = random_integer.my_int.result
}

