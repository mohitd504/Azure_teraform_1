terraform {
  required_version = ">= 1.5.0"
  # No backend block needed for local state
}

provider "azurerm" {
  features {}

  client_id       = "756201f3-e321-4930-8e6f-773d97d66b3e"   # Application (client) ID
  client_secret   = "f3428957-b1f1-44ed-ab76-a9a523859057"  # Client secret
  subscription_id = "YOUR_SUBSCRIPTION_ID"                 # Replace with your Azure subscription ID
  tenant_id       = "d98f82b5-d38f-4ae0-97a3-2af88bf9cbdd" # Directory (tenant) ID
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-rg"
  location = var.location
}
