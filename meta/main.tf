resource "random_pet" "pet" {
  length    = 2
  separator = "-"
}

output "pet_id" {
  value = random_pet.pet.id
}

output "pet_name" {
  value = random_pet.pet.id
}

