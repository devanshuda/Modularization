variable "network_security_group_name" {
	description = "The name of the network security group"
	type = string
}

variable "resource_group_name" {

}

variable "location" {

}

variable "nsg_security_rule_name" {
	description = "The name of the network security group's security rule"
	type = string
}

variable "nsg_security_rule_priority" {
	description = "The priority of the network security group's security rule"
	type = number
}

variable "nsg_security_rule_direction" {
	description = "The direction of the network security group's security rule"
	type = string
}

variable "nsg_security_rule_access" {
	description = "The access of the network security group's security rule"
	type = string
}

variable "nsg_security_rule_protocol" {
	description = "The protocol of the network security group's security rule"
	type = string
}
variable "nsg_security_rule_source_port_range" {
	description = "The source port range of the network security group's security rule"
	type = string
}
variable "nsg_security_rule_destination_port_range" {
	description = "The destination port range of the network security group's security rule"
	type = string
}
variable "nsg_security_rule_source_address_prefix" {
	description = "The source address prefix of the network security group's security rule"
	type = string
}
variable "nsg_security_rule_destination_address_prefix" {
	description = "The destination address prefix of the network security group's security rule"
	type = string
}
variable "nsg_tag_environment" {
	description = "The environment of the network security group"
	type = string
}
