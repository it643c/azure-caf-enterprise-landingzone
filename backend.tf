terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstateit643c"
    container_name       = "tfstate"
    key                  = "enterprise-landingzone.tfstate"
  }
}
