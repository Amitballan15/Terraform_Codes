resource "azurerm_resource_group" "basic-rgs" {
  for_each = var.rgnames
  name     = each.value.name
  location = each.value.location
  managed_by = each.value.managed_by
  tags     = each.value.tags
#   tags     = each.value.tags.costcenter
}


