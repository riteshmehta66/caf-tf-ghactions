terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.90.0"
      configuration_aliases = [
        azurerm.management,
        azurerm.connectivity,
      ]
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.7.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "caf-{{configs.environment}}-00-ss-cf1-00-mhb-a-rg-00dvops-e2"
    storage_account_name = "caf{{configs.environment}}cf1mhbastdvop15e2"
    container_name       = "tfstate"
    key                  = "mg_azure_policies.tfstate"
  }
}
