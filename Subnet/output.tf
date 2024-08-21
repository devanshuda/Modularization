output "subnet_name" {
	value = azurerm_subnet.subnet.name
	description = "The value of the name of the subnet"
}

output "subnet_address_prefixes" {
	value = azurerm_subnet.subnet.address_prefixes
	description = "The value of the address prefixes of the subnet"
}