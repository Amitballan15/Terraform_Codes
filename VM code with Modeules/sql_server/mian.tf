resource "azurerm_mssql_server" "example" {
  name                         = var.db_server_naam
  resource_group_name          = var.rg_ka_naam
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.loginid
  administrator_login_password = var.loginpass
  minimum_tls_version          = "1.2"

}
