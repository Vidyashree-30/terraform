variable "region_zones_map" {
  description = "Mapping of region to list of availability zones"
  type        = map(list(string))
  default = {
    "us-east-1" = ["us-east-1a", "us-east-1b", "us-east-1c"]
    "us-west-1" = ["us-west-1a", "us-west-1b"]
  }
}

