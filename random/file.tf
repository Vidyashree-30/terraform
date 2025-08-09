resource "random_string" "example" {
  length  = 21
  upper   = true
  lower   = true
  numeric = true    # ✅ Replaces deprecated 'number'
  special = false
}
