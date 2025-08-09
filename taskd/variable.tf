variable "my_string" {
  type = string
}

variable "my_number" {
  type = number
}

variable "my_bool" {
  type = bool
}

variable "my_list" {
  type = list(string)
}

variable "my_map" {
  type = map(string)
}

variable "my_object" {
  type = object({
    city    = string
    country = string
  })
}

variable "my_tuple" {
  type = tuple([string, string, number])
}

