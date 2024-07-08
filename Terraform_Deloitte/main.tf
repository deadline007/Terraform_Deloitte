module "azurerm_resource_group" {
   source = "./modules/azure/resource_group"
   name = var.name
}

module "azurerm_virtual_network" {
   source = "./modules/azure/vnet"
   vnet_name = var.vnet_name
   location = var.location
   resource_group_name = var.resource_group_name
   security_group = var.security_group
   address_space = var.address_space
   dns_servers = var.dns_servers
   # depends_on = [ module.azurerm_resource_group ]
}

module "azurerm_security_group" {
   source = "./modules/azure/security_group"
   resource_group_name = var.resource_group_name
   location = var.location
}


module "azurerm_storage_account" {
  source = "./modules/azure/storage_account"
  storage_account_name = var.storage_account_name
  resource_group_name = var.resource_group_name
  location = var.location
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
}

module "azurerm_network_interface" {
  source = "./modules/azure/network_interface"
  nic_name = var.nic_name
  location = var.location
  resource_group_name = var.resource_group_name
  ip_configuration = var.ip_configuration
}

 module "azurerm_virtual_machine" {
   source = "./modules/azure/virtual_machine"
   vm_name = var.vm_name
   vm_size = var.vm_size
   location = var.location
   resource_group_name = var.resource_group_name
   network_interface_ids = var.network_interface_ids
   os_disk_name = var.os_disk_name
   sku_name = var.sku_name
   os_disk_caching = var.os_disk_caching
   os_disk_create_option = var.os_disk_create_option
   os_disk_managed_disk_type = var.os_disk_managed_disk_type
   publisher = var.publisher
   offer = var.offer
   version_name = var.version_name
   computer_name = var.computer_name
   admin_username = var.admin_username
   admin_password = var.admin_password
  #  depends_on = [ module.azurerm_network_interface, module.azurerm_virtual_network ]
 }