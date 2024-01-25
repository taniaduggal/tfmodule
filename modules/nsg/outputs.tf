output "nic_name" {
  value = azurerm_network_security_group.my_terraform_nsg.name
}

output "nic_id" {
  value = azurerm_network_security_group.my_terraform_nsg.id
}
