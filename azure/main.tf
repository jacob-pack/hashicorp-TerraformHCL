provider "azapi" {
  features {}
}

locals {
  primaryRegion = "eastus2"
  primaryRegionAbbreviation = "eu2"
  envString = "dev"
  systemName = "jsp"
  orgName = "orgName"
  subscriptionId = "6f224d82-ff8c-45ee-a61d-7fd2f93a73be"
  allResourceGroupDescriptors = ["storage","network","devops"]
}

module "resourceGroups" {
  source   = "./modules/resourceGroup"
  envString = local.envString
  systemName = local.systemName
  orgName = local.orgName
  parentId = "" //In the TF/ARM model RGs are considered root resources. Otherwise I'd define subscriptionID here
  location = local.primaryRegion
  locationAbbreviation = local.primaryRegionAbbreviation
  allResourceGroupDescriptors = local.allResourceGroupDescriptors
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
