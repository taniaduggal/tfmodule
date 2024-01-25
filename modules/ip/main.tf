resource "azurerm_public_ip" "my_terraform_public_ip" {
  name                = "ip-tania-test-eastus-001"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"

  tags = var.common_tags
}
