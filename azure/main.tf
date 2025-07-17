provider "azurerm" {
  features {}
}

provider "azapi" {
  features {}
}

locals {
  storageAccountLocation = "East US 2"
  storageAccountName = "rg-jsp-storage-eu2-00"
}

module "resourceGroups" {
  source = "./modules/resourceGroup"
  name = "rg-jsp-storage-eu2-001"
  parentId = "parentId"
  location = "eastus2"
}


resource "azurerm_resource_group" "rg-JSP-storage-eu2" {
  location = "East US"
  name     = "rg-jsp-storage-eu2"
}





module "storageAccount" {
  source                   = "./modules/storageAccount"
  name                     = "storage-jsp-storage-eu2"
  account_tier             = "Standard"
  resource_group_name      = azurerm_resource_group.rg-JSP-storage-eu2
  location                 = azurerm_resource_group.rg-JSP-storage-eu2.location
  account_replication_type = "LRS"
}

module "virtualNetwork" {
  source = "./m"

}
