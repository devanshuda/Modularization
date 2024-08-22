#...........Resource Group Values...........
resource_group_name_value = "example-resources"
location_value            = "West Europe"

#...........Virtual Network Values...........
virtual_network_name_value          = "example-vnet"
virtual_network_address_space_value = ["10.0.0.0/16"]

#...........Subnet Values...........
subnet_name_value             = "example-vnet"
subnet_address_prefixes_value = ["10.0.1.0/24"]

#...........Network Interface Values...........#
network_interface_name_value                             = "example-nic"
nic_ip_configuration_name_value                          = "testconfiguration"
nic_ip_configuration_private_ip_address_allocation_value = "Dynamic"

#...........Virtual Machine Values...........#
virtual_machine_name_value                                       = "example-vm"
virtual_machine_vm_size_value                                    = "Standard_DS1_v2"
vm_storage_image_reference_publisher_value                       = "Canonical"
vm_storage_image_reference_offer_value                           = "0001-com-ubuntu-server-jammy"
vm_storage_image_reference_sku_value                             = "22_04-lts"
vm_storage_image_reference_version_value                         = "latest"
vm_storage_os_disk_name_value                                    = "myosdisk1"
vm_storage_os_disk_caching_value                                 = "ReadWrite"
vm_storage_os_disk_create_option_value                           = "FromImage"
vm_storage_os_disk_managed_disk_type_value                       = "Standard_LRS"
vm_os_profile_computer_name_value                                = "hostname"
vm_os_profile_admin_username_value                               = "testadmin"
vm_os_profile_admin_password_value                               = "Password1234!"
vm_os_profile_linux_config_disable_password_authentication_value = false
vm_tags_environment_value                                        = "staging"

# Uncomment this line to delete the OS disk automatically when deleting the VM
# virtual_machine_delete_os_disk_on_termination_value = true

# Uncomment this line to delete the data disks automatically when deleting the VM
# virtual_machine_delete_data_disks_on_termination_value = true


#...........Network Security Group Values...........#
network_security_group_name_value                  = "acceptanceTestSecurityGroup1"
nsg_security_rule_name_value                       = "test123"
nsg_security_rule_priority_value                   = 100
nsg_security_rule_direction_value                  = "Inbound"
nsg_security_rule_access_value                     = "Allow"
nsg_security_rule_protocol_value                   = "Tcp"
nsg_security_rule_source_port_range_value          = "*"
nsg_security_rule_destination_port_range_value     = "*"
nsg_security_rule_source_address_prefix_value      = "*"
nsg_security_rule_destination_address_prefix_value = "*"
nsg_tag_environment_value                          = "production"






