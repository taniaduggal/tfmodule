module "vnet" {
  source                  = "./modules/vnet"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  common_tags             = var.common_tags
}

module "subnet" {
  source                  = "./modules/subnet"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  common_tags             = var.common_tags
  vnet_name               = module.vnet.virtual_network_name
}

module "ip" {
  source                  = "./modules/ip"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  common_tags             = var.common_tags
}

module "nsg" {
  source                  = "./modules/nsg"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  common_tags             = var.common_tags
  nic_id                  =module.nic.nic_id
}

module "nic" {
  source                  = "./modules/nic"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  common_tags             = var.common_tags
  ip_id                    = module.ip.ip_id
  snet_id                  = module.subnet.snet_id
}

module "sa" {
  source                  = "./modules/sa"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  common_tags             = var.common_tags
}

module "vm" {
  source                  = "./modules/vm"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  common_tags             = var.common_tags
  nic_id                  = module.nic.nic_id
  ssh_key                 = module.ssh.ssh_key
  sa_uri                  = module.sa.sa_uri
}

module "ssh" {
  source                  = "./modules/ssh"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  common_tags             = var.common_tags
}