module "m1" {
  source = "../config"
  f1     = "xyz.txt"
  c1     = "this is from m1"
}
module "m4" {
  source = "github.com/Vidyashree-30/terraform.git"

}


