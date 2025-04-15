terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    # Will be configured during init
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "./modules/resource_group"

  name     = var.resource_group_name
  location = var.location
  tags = {
    environment = var.environment
  }
}

# Add your resources here
# Example: Azure Virtual Network
resource "azurerm_virtual_network" "main" {
  name                = "${var.environment}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}