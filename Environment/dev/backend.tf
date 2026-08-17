terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "storageaccountrg"
    storage_account_name = "storagedevaccount123"
    container_name       = "devcontainer"
    key                  = "devtfstate"
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}





