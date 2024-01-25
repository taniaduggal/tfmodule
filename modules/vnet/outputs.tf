output "virtual_network_name" {
  value = azurerm_virtual_network.my_terraform_network.name
}

output "virtual_network_id" {
  value = azurerm_virtual_network.my_terraform_network.id
}

output "virtual_network_address_space" {
  value = azurerm_virtual_network.my_terraform_network.address_space
}