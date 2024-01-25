resource "azurerm_subnet" "my_terraform_subnet" {
  name                 = "snet-tania-test-eastus-001"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = ["10.0.1.0/24"]

}
