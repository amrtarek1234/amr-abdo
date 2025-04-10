terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "identity" {
  source = "./modules/identity"
}

module "connectivity" {
  source = "./modules/connectivity/"
}

module "management" {
  source = "./modules/management"
}

module "dev" {
  source = "./modules/dev"
   dev_subnet_id  = module.connectivity.subnet_ids["Dev"]  # Using the map output

  depends_on = [ module.connectivity ]
}
