#https://stackoverflow.com/questions/62103837/load-a-specific-tfvars-variables-file-in-my-terraform-cloud-workspace


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.47"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "name" {
  type = string
}

locals {
  environment = terraform.workspace
}

resource "azurerm_resource_group" "tfstate" {
  name     = "rg-${ var.name }-${ local.environment }"
  location = "uksouth"
}

