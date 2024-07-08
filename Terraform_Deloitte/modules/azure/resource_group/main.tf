# provider "azurerm" {
#   features {}
# }

resource "azurerm_resource_group" "rg" {
for_each          = { for n in var.name : n.name => n }
  name     = each.value.name
  location = each.value.location
}