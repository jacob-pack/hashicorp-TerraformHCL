locals {
  name = "vnet-${var.systemName}-${var.envString}-${var.locationAbbreviation}-001"
}

resource "azapi_resource" "virtualNetwork" {
  name                      = local.name
  location                  = var.location
  parent_id                 = var.parent_id
  type                      = var.resourceType
  schema_validation_enabled = var.schemaValidationEnabled
  ignore_casing             = var.ignoreCasing
  ignore_missing_property   = var.ignoreMissingProperty

  body = {
    properties = {
      addressSpace = {
        addressPrefixes = [var.addressPrefixes]
      }
      enableDdosProtection = var.enableDdosProtection
      encryption = {
        enabled     = var.encryptionEnabled
        enforcement = var.encryptionEnforcement
      }
      privateEndpointVNetPolicies = var.privateEndpointVNetPolicies
      subnets                     = [var.subnets]
      virtualNetworkPeerings      = [var.virtualNetworkPeerings]
    }
  }
}