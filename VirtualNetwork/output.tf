output "virtual_network_name" {
	value = azurerm_virtual_network.virtual_network.name
	description = "The value of the name of the virtual network"
}

output "virtual_network_address_space" {
	value = azurerm_virtual_network.virtual_network.address_space
	description = "The value of the address space of the virtual network"
}
