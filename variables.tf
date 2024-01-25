variable "resource_group_name" {
  type        = string
  default = "rg-tania-dev-eastus-001"
  description = "Name of the resource group."
}

variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}



variable "common_tags" {
  type    = map(string)
  default = {
    Env              = "dev"
    Owner            = "tania"
    ApplicationName  = "onepane"
    Criticality      = "low"
  }
}
