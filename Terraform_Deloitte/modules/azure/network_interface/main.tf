resource "azurerm_network_interface" "main" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

ip_configuration {
    name                          = var.ip_configuration[0].name  # Assuming first element
    subnet_id                     = "/subscriptions/2b5e6a09-39ce-4155-a52f-356680ee2575/resourceGroups/vnet-rg/providers/Microsoft.Network/virtualNetworks/vnet-del/subnets/subnet1"
    private_ip_address_allocation = var.ip_configuration[0].private_ip_address_allocation
     public_ip_address_id         = azurerm_public_ip.public_ip.id
    
  }
  }

resource "azurerm_public_ip" "public_ip" {
  name                = "jen_pub"  # Define a name for the public IP
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"  # Allocate a new public IP dynamically
  sku                 = "Standard" # Specify the SKU as Standard

  # Optionally, you can add tags here if needed
  # tags = {
  #   Name = var.vm_name  # Optional: Tag the public IP with VM name
  # }
}
