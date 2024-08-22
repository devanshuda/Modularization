#...........Resource Group Variables...........
variable "resource_group_name_value" {
  description = "The value of the name of the resource group"
  type        = string
}

variable "location_value" {
  description = "The value of the location of the resource group"
  type        = string
}

#...........Virtual Network Variables...........
variable "virtual_network_name_value" {
  description = "The value of the name of the virtual network"
  type        = string
}
variable "virtual_network_address_space_value" {
  description = "The value of the address space of the virtual network"
  type        = list(any)
}

#...........Subnet Variables...........
variable "subnet_name_value" {
  description = "The value of the name of the subnet"
  type        = string
}

variable "subnet_address_prefixes_value" {
  description = "The value of the address prefixes of the subnet"
  type        = list(any)
}

#...........Network Interface Variables...........
variable "network_interface_name_value" {
  description = "The value of the name of the network interface"
  type        = string
}

variable "nic_ip_configuration_name_value" {
  description = "The value of the name of the network interface's ip configuration"
  type        = string
}

variable "nic_ip_configuration_private_ip_address_allocation_value" {
  description = "The value of the private IP address allocation of the network interface's ip configuration"
  type        = string
}

#...........Virtual Machine Variables...........
variable "virtual_machine_name_value" {
  description = "The value of the name of the virtual machine"
  type        = string
}

variable "virtual_machine_vm_size_value" {
  description = "The value of the VM size of the virtual machine"
  type        = string
}

# Uncomment this line to delete the OS disk automatically when deleting the VM
# variable "virtual_machine_delete_os_disk_on_termination_value" {
#	description = "The value of delete OS Disk on termination in the virtual machine"
#	type = bool
# } 

# Uncomment this line to delete the data disks automatically when deleting the VM
# variable "virtual_machine_delete_data_disks_on_termination_value" {
#	description = "The value of delete Data Disk on termination in the virtual machine"
#	type = bool
# }

variable "vm_storage_image_reference_publisher_value" {
  description = "The value of the storage image reference publisher of the virtual machine"
  type        = string
}

variable "vm_storage_image_reference_offer_value" {
  description = "The value of the storage image reference offer of the virtual machine"
  type        = string

}

variable "vm_storage_image_reference_sku_value" {
  description = "The value of the storage image reference sku of the virtual machine"
  type        = string
}

variable "vm_storage_image_reference_version_value" {
  description = "The value of the storage image reference version of the virtual machine"
  type        = string
}

variable "vm_storage_os_disk_name_value" {
  description = "The value of the name of the virtual machine's storage OS disk"
  type        = string
}

variable "vm_storage_os_disk_caching_value" {
  description = "The value of the caching of the virtual machine's storage OS disk"
  type        = string
}

variable "vm_storage_os_disk_create_option_value" {
  description = "The value of the create option of the virtual machine's storage OS disk"
  type        = string
}

variable "vm_storage_os_disk_managed_disk_type_value" {
  description = "The value of the managed disk type of the virtual machine's storage OS disk"
  type        = string
}

variable "vm_os_profile_computer_name_value" {
  description = "The value of the computer name of the virtual machine's OS profile"
  type        = string
}

variable "vm_os_profile_admin_username_value" {
  description = "The value of the admin username of the virtual machine's OS profile"
  type        = string
}

variable "vm_os_profile_admin_password_value" {
  description = "The value of the admin password of the virtual machine's OS profile"
  type        = string
}

variable "vm_os_profile_linux_config_disable_password_authentication_value" {
  description = "The value of the linux config disable password authentication of the virtual machine's OS profile"
  type        = bool
}

variable "vm_tags_environment_value" {
  description = "The value of the environment of the virtual machine"
  type        = string
}

#...........Network Security Group Variables...........
variable "network_security_group_name_value" {
  description = "The value of the name of the network security group"
  type        = string
}

variable "nsg_security_rule_name_value" {
  description = "The value of the name of the network security group's security rule"
  type        = string
}

variable "nsg_security_rule_priority_value" {
  description = "The value of the priority of the network security group's security rule"
  type        = number
}

variable "nsg_security_rule_direction_value" {
  description = "The value of the direction of the network security group's security rule"
  type        = string
}

variable "nsg_security_rule_access_value" {
  description = "The value of the access of the network security group's security rule"
  type        = string
}

variable "nsg_security_rule_protocol_value" {
  description = "The value of the protocol of the network security group's security rule"
  type        = string
}
variable "nsg_security_rule_source_port_range_value" {
  description = "The value of the source port range of the network security group's security rule"
  type        = string
}
variable "nsg_security_rule_destination_port_range_value" {
  description = "The value of the destination port range of the network security group's security rule"
  type        = string
}
variable "nsg_security_rule_source_address_prefix_value" {
  description = "The value of the source address prefix of the network security group's security rule"
  type        = string
}
variable "nsg_security_rule_destination_address_prefix_value" {
  description = "The value of the destination address prefix of the network security group's security rule"
  type        = string
}
variable "nsg_tag_environment_value" {
  description = "The value of the environment of the network security group"
  type        = string
}



