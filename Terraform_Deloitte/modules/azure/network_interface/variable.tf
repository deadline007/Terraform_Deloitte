variable "resource_group_name" {
    type = string
}
variable "location" {
    type = string
}
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