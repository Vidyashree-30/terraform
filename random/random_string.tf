variable "Length" {
  type    = number
  default = 12  
}

resource "random_string" "simple" {
  length  = var.Length
  special = false
}

output "rand_str" {
  value = random_string.simple.result
}
