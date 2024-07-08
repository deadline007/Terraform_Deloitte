name = [ {
      name      = "vnet-rg"
      location  = "West Europe"
      } ]


vnet_name = "vnet-del"
address_space = [ "10.0.0.0/16" ]
dns_servers = [ "10.0.0.4" ]
resource_group_name = "vnet-rg"
location = "West Europe"
storage_account_name = "dvchab"
account_tier = "Standard"
account_replication_type = "LRS"
security_group = "/subscriptions/2b5e6a09-39ce-4155-a52f-356680ee2575/resourceGroups/vnet-rg/providers/Microsoft.Network/networkSecurityGroups/nsg"

#############
nic_name = "jenkins_nic"
ip_configuration = [ {
  name = "internal"
  # subnet_id = "subnet1"
  private_ip_address_allocation = "Dynamic"
} ]


#########################
vm_name = "jenkins_vm"
network_interface_ids = [ "/subscriptions/2b5e6a09-39ce-4155-a52f-356680ee2575/resourceGroups/vnet-rg/providers/Microsoft.Network/networkInterfaces/jenkins_nic" ]
vm_size = "Standard_DS1_v2"
    os_disk_name              = "osdisks"
    os_disk_caching           = "ReadWrite"
    os_disk_create_option     = "FromImage"
    os_disk_managed_disk_type = "Standard_LRS"

    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku_name       = "18.04-LTS"
    version_name   = "latest"
    computer_name  = "hostname"
    admin_username = "adminuser"
    admin_password = "P@ssw0rd1234"