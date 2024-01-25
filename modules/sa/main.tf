resource "azurerm_storage_account" "my_storage_account" {
  name                     = "sataniatesteastus001"
  location                 = var.resource_group_location
  resource_group_name      = var.resource_group_name
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.common_tags
}
