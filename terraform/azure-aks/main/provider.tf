terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "d1974b90-430f-48ed-91f6-f853bac1eee8"
 features {}
}