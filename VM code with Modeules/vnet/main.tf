resource "azurerm_virtual_network" "vnet" {
    name = var.vnet_ka_naam
    location = var.vnet_ki_location
    resource_group_name = var.rg_ka_naam
    address_space = var.address_space
  
}