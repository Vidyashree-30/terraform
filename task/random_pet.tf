variable "length" {
  type    = number
  default = 2
}

resource "random_pet" "name" {
  length    = var.length
  separator = "-"
}

output "pet_name" {
  value = random_pet.name.id
}

