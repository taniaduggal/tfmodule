output "ssh_key" {
  value = azurerm_ssh_public_key.ssh_key_pair.public_key
}