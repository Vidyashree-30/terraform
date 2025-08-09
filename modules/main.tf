module "m1" {
  source = "../config"
  f1     = "123.txt"
  c1     = "content from module"
}
module "m2" {
  source = "../config"
  f1     = "456.txt"
  c1     = "content from module 2"
}
module "m4" {
  source = "github.com/vidyashree-30/Terraform.git"

}
module "m5" {
  source  = "Azure/vnet/azurerm"
  version = "5.0.1"
}

