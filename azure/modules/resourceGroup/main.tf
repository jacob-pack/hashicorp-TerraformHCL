resource "azapi_resource" "resourceGroup" {
    for_each = var.allResourceGroupDescriptors

  type = var.resourceGroupResourceType
  name = "rg-${var.systemName}-${var.envString}-${var.resourceGroupDescriptor}-${var.locationAbbreviation}-001"
  parent_id = var.parentId
  location = var.location
  allResourceGroupDescriptors = var.allResourceGroupDescriptors
  }