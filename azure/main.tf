provider "azurerm" {
  features {}
}

provider "azapi"{
  features{}
 }

resource "azurerm_resource_group" "rg-JSP-storage-eu2" {
  location = "East US"
  name     = "rg-jsp-storage-eu2"
}



module "storageAccount" {
  source                   = "./modules/storageAccount"
  name                     = "rg-jsp-storage-eu2"
  account_tier             = "Standard"
  resource_group_name      = azurerm_resource_group.rg-JSP-storage-eu2
  location                 = azurerm_resource_group.rg-JSP-storage-eu2.location
  account_replication_type = "LRS"
}

module "virtualNetwork" {
  source = "./m"

}
