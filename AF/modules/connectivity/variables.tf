
variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "resource_group" {
  description = "Resource group name"
  type        = string
  default     = "rg-landing-zone"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-landing-zone"
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
  default     = ["10.9.0.0/16"]
}

variable "subnet_names" {
  description = "List of subnet names"
  type        = list(string)
  default     = [
    "AzureFirewallSubnet",
    "WAF",
    "MGMT",
    "App-Prod",
    "Dev",
    "DB-Prod",
    "Web" ,
    "Shared-Resources",
    "Identity"

  ]
}

variable "subnet_prefixes" {
  description = "List of subnet prefixes"
  type        = list(string)
  default     = [
    "10.9.1.0/24",
    "10.9.2.0/24",
    "10.9.3.0/24",
    "10.9.4.0/24",
    "10.9.5.0/24",
    "10.9.6.0/24",
    "10.9.7.0/24",
    "10.9.8.0/24",
    "10.9.9.0/24",
  ]
}
