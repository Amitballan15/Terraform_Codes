module "resource_group" {
  source = "../../Module/resource_group"
  rg = "amit-rg-prod"
  location = "East US"
  
}
 module "Standard_Storage" {
depends_on = [ module.resource_group ]
  source = "../../Module/storage_account"
  azurerm_storage_account = "amitstgprod1234"
  rg = "amit-rg-prod"
  location = "east us"
  account_tier = "Standard"
account_replication_type = "LRS"
 }

 module "container" {
   source = "../../Module/container"
    container_name = "blobbhai"
    storage_account_id = module.Standard_Storage.storage_account_id
 }