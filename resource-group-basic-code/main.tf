terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.62.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c4012309-8056-4cee-b9a5-a3dbe1742d81"
}

resource "azurerm_resource_group" "test" {
    name = "demo"
    location = "westus"
  
}