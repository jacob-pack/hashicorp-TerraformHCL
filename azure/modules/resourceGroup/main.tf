resource "azapi_resource" "resourceGroup" {
    for_each = var.allResourceGroupDescriptors

  type = "Microsoft.Resources/resourceGroups@2025-04-01"
  name = "rg-${systemName}-${envString}-${resourceGroupDescriptor}-${locationAbbreviation}-001"
  parent_id = parentId
  location = location
  allResourceGroupDescriptors = allResourceGroupDescriptors
  }