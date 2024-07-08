resource "azurerm_network_security_group" "main" {
  name                   = "nsg"
  location               = var.location
  resource_group_name    = var.resource_group_name

  security_rule {
    name                   = "AllowSSH"
    priority               = 1001
    direction               = "Inbound"
    access                 = "Allow"
    protocol               = "Tcp"
    source_port_range       = "*"
    destination_port_range = "22"
    source_address_prefix  = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                   = "allow_http"
    priority               = 200
    direction               = "Inbound"
    source_address_prefix  = "*"
    destination_address_prefix = "*"
    destination_port_range = "80"  # Assuming you only want to allow traffic to port 80
    protocol               = "Tcp"
    access                 = "Allow"
    source_port_range       = "80"  # Allow connections from port 80 on the source
  }

  security_rule {
  name                        = "allow_outbound_internet"
  priority                    = 300  # Set a higher priority than existing rules
  direction                   = "Outbound"
  source_address_prefix       = "*"  # Allow traffic from any source within the VM
  destination_address_prefix   = "*"  # Allow traffic to any destination on the internet
  destination_port_range       = "*"  # Allow traffic to any port
  protocol                     = "*"  # Allow any protocol (TCP, UDP, etc.)
  access                       = "Allow"
  source_port_range      = "*"
  }
}