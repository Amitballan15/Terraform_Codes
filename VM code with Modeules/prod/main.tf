
module "rg" {
  source      = "../rg"
  rg_name     = "big_rg"
  rg_location = "west europe"
}

module "vnet" {
  source           = "../vnet"
  vnet_ka_naam     = "big_vnet"
  vnet_ki_location = "west europe"
  rg_ka_naam       = "big_rg"
  address_space    = ["192.168.0.0/24"]
}

module "onesubnet" {
  source           = "../subnet"
  pahla-subnet     = "big_subnet"
  vnet_ka_naam     = "big_vnet"
  
  rg_ka_naam       = "big_rg"
  address_space    = ["192.168.0.0/26"]
}