resource "azurerm_subnet" "onesubnet" {
  name                 = var.pahla-subnet
  resource_group_name  = var.rg_ka_naam
  virtual_network_name = var.vnet_ka_naam
  address_prefixes     = var.address_space
   }

  
