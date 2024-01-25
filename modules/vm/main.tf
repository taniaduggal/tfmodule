resource "azurerm_linux_virtual_machine" "my_terraform_vm" {
  name                  = "vm-tania-test-eastus-001"
  location              = var.resource_group_location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [var.nic_id]
  size                  = "Standard_DS1_v2"

  os_disk {
    name                 = "osdisk-sajo-test-eastus-005"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }

  computer_name  = "hostname"
  admin_username = var.username

  admin_ssh_key {
    username   = var.username
    public_key = var.ssh_key
  }

  boot_diagnostics {
    storage_account_uri =var.sa_uri
  }

  tags = var.common_tags
}
