resource "azurerm_virtual_network" "vnet" {
  name                 = var.vnet_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  address_space        = var.address_space
  dns_servers           = var.dns_servers

  subnet {
    name                 = "subnet1"
    address_prefix       = "10.0.1.0/24"
    security_group   = var.security_group  # Assuming "security_name" is the correct variable
  }
}
