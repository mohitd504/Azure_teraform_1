terraform {
  required_version = ">= 1.5.0"
  # No backend block needed for local state
}

provider "azurerm" {
  features {}
  use_cli = true
 }

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-rg"
  location = var.location
}
