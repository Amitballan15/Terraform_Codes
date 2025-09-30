module "resource_group" {
  source = "../../Module/resource_group"
  rg = "amit-rg-dev"
  location = "East US"
  
}
 module "Standard_Storage" {
depends_on = [ module.resource_group ]
  source = "../../Module/storage_account"
  azurerm_storage_account = "amitstgdev1234"
  rg = "amit-rg-dev"
  location = "east us"
  account_tier = "Standard"
account_replication_type = "LRS"
 }

 module "container" {
   source = "../../Module/container"
    container_name = "blobbhaidev"
    storage_account_id = module.Standard_Storage.storage_account_id
 }