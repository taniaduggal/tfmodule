resource "random_pet" "ssh_key_name" {
  prefix    = "ssh"
  separator = ""
}

resource "azurerm_ssh_public_key" "ssh_key_pair" {
  name      = random_pet.ssh_key_name.id
  resource_group_name = var.resource_group_name
  location  = var.resource_group_location
  public_key          = file("~/.ssh/id_rsa.pub")

  tags = var.common_tags
}


