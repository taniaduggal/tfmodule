resource "azurerm_network_security_group" "my_terraform_nsg" {
  name                = "nsg-tania-test-eastus-001"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = var.common_tags
}

resource "azurerm_network_interface_security_group_association" "example" {
  network_interface_id      = var.nic_id
  network_security_group_id = azurerm_network_security_group.my_terraform_nsg.id
}