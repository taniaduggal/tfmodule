resource "azurerm_network_interface" "my_terraform_nic" {
  name                = "nic-tania-test-eastus-001"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "my_nic_configuration"
    subnet_id                     = var.snet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.ip_id
  }

  tags = var.common_tags
}
