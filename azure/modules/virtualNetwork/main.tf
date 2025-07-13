resource "azapi_resource" "virtualNetwork" {
  body = {
    properties = {
      addressSpace = {
        addressPrefixes = ["10.0.0.0/16"]
      }
      enableDdosProtection = false
      encryption = {
        enabled     = true
        enforcement = "AllowUnencrypted"
      }
      privateEndpointVNetPolicies = "Disabled"
      subnets                     = []
      virtualNetworkPeerings      = []
    }
  }
  ignore_casing             = false
  ignore_missing_property   = true
  location                  = "eastus2"
  name                      = "vnet-jsp-eastus2-001"
  parent_id                 = "/subscriptions/6f224d82-ff8c-45ee-a61d-7fd2f93a73be/resourceGroups/rg-jsp-network-001"
  schema_validation_enabled = true
  type                      = "Microsoft.Network/virtualNetworks@2024-05-01"
}