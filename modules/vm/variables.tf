variable "resource_group_name" {
  type        = string
  description = "Name of the resource group."
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group."
}

variable "common_tags" {
  type    = map(string)
  default = {}
}

variable "nic_id" {
  type = string
}

variable "ssh_key" {
  type = string
}

variable "sa_uri" {
  type = string
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureadmin"
}