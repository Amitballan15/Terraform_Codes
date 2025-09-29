resource "azurerm_storage_account" "amitstg" {
  name = var.azurerm_storage_account
  resource_group_name = var.rg
  location = var.location
  account_replication_type = var.account_replication_type
  account_tier = var.account_tier
  }

  output "storage_account_id" {
    value = azurerm_storage_account.amitstg.id
  }