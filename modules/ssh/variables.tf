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

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
  default     = "${{ secrets.SSH_PUBLIC_KEY }}"
}

