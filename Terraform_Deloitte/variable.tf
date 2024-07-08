variable "name" {
    type        = list(object({
      name      = string
      location  = string
    }))
}

variable "vnet_name" {
  type = string
}
variable "address_space" {
  type = list(string)
}
variable "dns_servers" {
  type = list(string)
}

variable "security_group" {
  type = string
}


######################

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}



#####################
variable "storage_account_name" {
  type = string
}

variable "account_tier" {
  type = string
}

variable "account_replication_type" {
  type = string
}


###########################

variable "nic_name" {
  type = string
}

variable "ip_configuration" {
  type = list(object({
    name                          = string
    # subnet_id                      = string
    private_ip_address_allocation = string  # "Dynamic" (default) or "Static"
  }))
}



##################################

variable "vm_name" {
  type = string
}

variable "network_interface_ids" {
  type = list(string)
}

variable "vm_size" {
  type = string
}

variable "os_disk_name" {
  type = string
}

variable "os_disk_caching" {
  type = string
}

variable "os_disk_create_option" {
  type = string
}

variable "os_disk_managed_disk_type" {
  type = string
}

variable "publisher" {
  type = string
}

variable "offer" {
  type = string
}

variable "sku_name" {
  type = string
}
variable "version_name" {
  type = string
}
variable "computer_name" {
  type = string
}
variable "admin_username" {
  type = string
}
variable "admin_password" {
  type = string
}