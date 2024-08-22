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

#.......... Module for Network Interface ..........
module "Network_Interface" {
  source = "../Modularization/NetworkInterface"

  network_interface_name = var.network_interface_name_value
  location               = module.Resource_Group.resource_group01_location
  resource_group_name    = module.Resource_Group.resource_group01_name

  nic_ip_configuration_name                          = var.nic_ip_configuration_name_value
  subnet_id                                          = module.Subnet.subnet_id
  nic_ip_configuration_private_ip_address_allocation = var.nic_ip_configuration_private_ip_address_allocation_value
}


#.......... Module for Virtual Machine ..........
module "Virtual_Machine" {
  source = "../Modularization/VirtualMachine"

  virtual_machine_name    = var.virtual_machine_name_value
  location                = module.Resource_Group.resource_group01_location
  resource_group_name     = module.Resource_Group.resource_group01_name
  network_interface_ids   = module.Network_Interface.network_interface_ids
  virtual_machine_vm_size = var.virtual_machine_vm_size_value

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # virtual_machine_delete_os_disk_on_termination = var.virtual_machine_delete_os_disk_on_termination_value

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # virtual_machine_delete_data_disks_on_termination = var.virtual_machine_delete_data_disks_on_termination_value

  vm_storage_image_reference_publisher = var.vm_storage_image_reference_publisher_value
  vm_storage_image_reference_offer     = var.vm_storage_image_reference_offer_value
  vm_storage_image_reference_sku       = var.vm_storage_image_reference_sku_value
  vm_storage_image_reference_version   = var.vm_storage_image_reference_version_value


  vm_storage_os_disk_name              = var.vm_storage_os_disk_name_value
  vm_storage_os_disk_caching           = var.vm_storage_os_disk_caching_value
  vm_storage_os_disk_create_option     = var.vm_storage_os_disk_create_option_value
  vm_storage_os_disk_managed_disk_type = var.vm_storage_os_disk_managed_disk_type_value

  vm_os_profile_computer_name                                = var.vm_os_profile_computer_name_value
  vm_os_profile_admin_username                               = var.vm_os_profile_admin_username_value
  vm_os_profile_admin_password                               = var.vm_os_profile_admin_password_value
  vm_os_profile_linux_config_disable_password_authentication = var.vm_os_profile_linux_config_disable_password_authentication_value

  vm_tags_environment = var.vm_tags_environment_value
}

#.......... Module for Security Group ..........
module "Security_Group" {
  source = "../Modularization/SecurityGroup"

  network_security_group_name = var.network_security_group_name_value
  location                    = module.Resource_Group.resource_group01_location
  resource_group_name         = module.Resource_Group.resource_group01_name

  nsg_security_rule_name                       = var.nsg_security_rule_name_value
  nsg_security_rule_priority                   = var.nsg_security_rule_priority_value
  nsg_security_rule_direction                  = var.nsg_security_rule_direction_value
  nsg_security_rule_access                     = var.nsg_security_rule_access_value
  nsg_security_rule_protocol                   = var.nsg_security_rule_protocol_value
  nsg_security_rule_source_port_range          = var.nsg_security_rule_source_port_range_value
  nsg_security_rule_destination_port_range     = var.nsg_security_rule_destination_port_range_value
  nsg_security_rule_source_address_prefix      = var.nsg_security_rule_source_address_prefix_value
  nsg_security_rule_destination_address_prefix = var.nsg_security_rule_destination_address_prefix_value

  nsg_tag_environment = var.nsg_tag_environment_value
}


#.......... For using values via module, you need to use the output variable for that module. For Ex:-
#.......... If Subnet wants to have the value of "ResourceGroup" module's resource_group_name then
#.......... It must take the output variable of "resource_group01_name" from the output.tf under ResourceGroup folder