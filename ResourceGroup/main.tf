resource "azurerm_resource_group" "resource_group01" {
	name = var.resource_group_name
	location =  var.location	
}