locals {
  name = "vnet-jsp-eastus2-001"
  location = "eastus2"
  parent_id = "/subscriptions/6f224d82-ff8c-45ee-a61d-7fd2f93a73be/resourceGroups/rg-jsp-network-001"
  resourceType = "Microsoft.Network/virtualNetworks@2024-05-01"
  schemaValidationEnabled = true
  ignoreCasing = false
  ignoreMissingProperty = true
  addressPrefixes = ["10.0.0.0/16"]
  enableDdosProtection = false
  encryptionEnabled = "true"
  encryptionEnforcement = "AllowUnencrypted"
  privateEndpointVNetPolicies = "Disabled"
  subnets = []
  virtualNetworkPeerings = []
}

resource "azapi_resource" "virtualNetwork" {
  name                      =  local.name
  location                  = local.location
  parent_id                 = local.parent_id
  type                      = local.resourceType
  schema_validation_enabled = local.schemaValidationEnabled
  ignore_casing             = local.ignoreCasing
  ignore_missing_property   = local.ignoreMissingProperty

  body = {
    properties = {
      addressSpace = {
        addressPrefixes = local.addressPrefixes
      }
      enableDdosProtection = local.enableDdosProtection
      encryption = {
        enabled     = local.encryptionEnabled
        enforcement = local.encryptionEnforcement
      }
      privateEndpointVNetPolicies = local.privateEndpointVNetPolicies
      subnets                     = local.subnets
      virtualNetworkPeerings      = local.virtualNetworkPeerings
    }
  }
}