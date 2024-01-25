output "sa_name" {
  value = azurerm_storage_account.my_storage_account.name
}

output "sa_id" {
  value = azurerm_storage_account.my_storage_account.id
}

output "sa_uri" {
  value = azurerm_storage_account.my_storage_account.primary_blob_endpoint
}