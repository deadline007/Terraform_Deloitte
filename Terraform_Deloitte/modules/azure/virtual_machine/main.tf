resource "azurerm_virtual_machine" "main" {
  name                 = var.vm_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  network_interface_ids = var.network_interface_ids
  vm_size               = var.vm_size

  storage_os_disk {
    # Use specific configuration from list (change index if needed)
    name                 = var.os_disk_name
    caching               = var.os_disk_caching
    create_option         = var.os_disk_create_option
    managed_disk_type     = var.os_disk_managed_disk_type
  }

  storage_image_reference {
    # Assuming "sku" is within a nested object named "sku"
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku_name  # Access "name" within "sku" object (adjust if different)
    version   = var.version_name
  }

  os_profile {
    # Assuming "os_profile" should be a single object defined elsewhere
    computer_name     = var.computer_name
    admin_username    = var.admin_username
    admin_password    = var.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}
