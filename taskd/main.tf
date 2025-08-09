output "my_string" {
  value = var.my_string
}

output "my_number" {
  value = var.my_number
}

output "my_bool" {
  value = var.my_bool
}

output "my_list" {
  value = var.my_list[1]
}

output "my_map" {
  value = var.my_map["city"]
}

output "my_object_city" {
  value = var.my_object.city
}

output "my_tuple" {
  value = var.my_tuple[0]
}

