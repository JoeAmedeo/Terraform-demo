terraform {
  required_version = ">= 0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.25.0"
    }
  }

  backend "azurerm" {
    resource_group_name = var.RESOURCE_GROUP_NAME
    storage_account_name = "${var.RESOURCE_PREFIX}_storage_account"
    container_name = azurerm_storage_container.default.name
    key = "terraform.tfstate"
    access_key = azurerm_storage_account.default.primary_access_key
  }
}
