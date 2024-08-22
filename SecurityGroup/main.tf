resource "azurerm_network_security_group" "network_security_group" {
  name                = var.network_security_group_name
  location            = var.location
  resource_group_name = var.resource_group_name

  # security_rule {
  #   name                       = "test123"
  #   priority                   = 100
  #   direction                  = "Inbound"
  #   access                     = "Allow"
  #   protocol                   = "Tcp"
  #   source_port_range          = "*"
  #   destination_port_range     = "*"
  #   source_address_prefix      = "*"
  #   destination_address_prefix = "*"
  # }

  # tags = {
  #   environment = "Production"
  # }

  security_rule {
    name                       = var.nsg_security_rule_name
    priority                   = var.nsg_security_rule_priority
    direction                  = var.nsg_security_rule_direction
    access                     = var.nsg_security_rule_access
    protocol                   = var.nsg_security_rule_protocol
    source_port_range          = var.nsg_security_rule_source_port_range
    destination_port_range     = var.nsg_security_rule_destination_port_range
    source_address_prefix      = var.nsg_security_rule_source_address_prefix 
    destination_address_prefix = var.nsg_security_rule_destination_address_prefix 
  }

  tags = {
    environment = var.nsg_tag_environment
  }
}