terraform {
  required_version = ">= 1.5.0"
  # No backend block needed for local state
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-rg"
  location = var.location
}
