resource "local_file" "zone_list" {
  for_each = var.region_zones_map

  filename = "${each.key}_zones.txt"
  content  = join("\n", each.value)
}

