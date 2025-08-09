resource "random_string" "replaced_on_trigger" {
  length  = 6
  upper   = false
  special = false

  lifecycle {
    create_before_destroy = true
    replace_triggered_by = [
      random_id.replacement_trigger 
    ]
  }
}

resource "random_id" "replacement_trigger" {
  byte_length = 2
}

