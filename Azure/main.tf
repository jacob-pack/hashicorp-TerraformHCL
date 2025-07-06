provider "azurerm" {
features{}
}

resource "azurerm_resource_group" "rg-JSP-storage-eu2" {
  location = azurerm_resource_group.rg-jsp-storage-eu2.location
  name = "rg-jsp-storage-eu2"

}

resource "azurerm_storage_account" "rg-JSP-storage-eu2" {
  location = azurerm_resource_group.rg-jsp-storage-eu2.location
  name = "rg-jsp-storage-eu2"
  resource_group_name = azurerm_resource_group.rg-JSP-storage-eu2
  account_tier = "Standard"
  account_replication_type = "LRS"

}