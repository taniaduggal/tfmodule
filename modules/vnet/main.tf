resource "azurerm_virtual_network" "my_terraform_network" {
  name                = "vnet-tania-test-eastus-001"
  address_space       = ["10.0.0.0/16"]
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  tags = var.common_tags
}
