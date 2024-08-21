#.......... Module for Resource Group ..........
module "Resource_Group" {
  source = "../Modularization/ResourceGroup"

  resource_group_name = var.resource_group_name_value
  location            = var.location_value
}

#.......... Module for Virtual Network ..........
module "Virtual_Network" {
  source = "../Modularization/VirtualNetwork"

  virtual_network_name          = var.virtual_network_name_value
  virtual_network_address_space = var.virtual_network_address_space_value
  location                      = module.Resource_Group.resource_group01_location
  resource_group_name           = module.Resource_Group.resource_group01_name
}

#.......... Module for Virtual Network ..........
module "Subnet" {
  source = "../Modularization/Subnet"

  subnet_name             = var.subnet_name_value
  subnet_address_prefixes = var.subnet_address_prefixes_value
  virtual_network_name    = module.Virtual_Network.virtual_network_name
  resource_group_name     = module.Resource_Group.resource_group01_name
}

#.......... For using values via module, you need to use the output variable for that module. For Ex:-
#.......... If Subnet wants to have the value of "ResourceGroup" module's resource_group_name then
#.......... It must take the output variable of "resource_group01_name" from the output.tf under ResourceGroup folder