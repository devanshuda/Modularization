#...........Resource Group Variables...........
variable "resource_group_name_value" {
	description = "The value of the name of the resource group"
	type = string
} 

variable "location_value" {
	description = "The value of the location of the resource group"
	type = string
}

#...........Virtual Network Variables...........
variable "virtual_network_name_value" {
	description = "The value of the name of the virtual network"
	type = string
} 
variable "virtual_network_address_space_value" {
	description = "The value of the address space of the virtual network"
	type = list
}

#...........Subnet Variables...........
variable "subnet_name_value" {
	description = "The value of the name of the subnet"
	type = string
}

variable "subnet_address_prefixes_value" {
	description = "The value of the address prefixes of the subnet"
	type = list
}







