provider "azurerm" {
  features {}

  storage_use_azuread = false
  skip_provider_registration = true
}

resource "azurerm_storage_account" "demo" {
  name                     = "localstorageacct"
  resource_group_name      = "localgroup"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
