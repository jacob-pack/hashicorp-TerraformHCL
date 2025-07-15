locals {
  allowClassicOperations         = false
  circuitProvisioningState       = "Enabled"
  enableDirectPortRateLimit      = false
  globalReachEnabled             = false
  serviceProviderBandwidthMbps   = 50
  serviceProviderPeeringLocation = "Atlanta"
  serviceProviderName            = "CenturyLink Cloud Connect" //now known as Lumen
  skuName = "Standard_MeteredData"
  skuFamily = "MeteredData"
  skuTier = "Standard"
  ignoreCasing = false
  ignoreMissingProperty = true
  location = "eastus2"
  name = "excir-jp-eastus-001"
  parentId = "/subscriptions/6f224d82-ff8c-45ee-a61d-7fd2f93a73be/resourceGroups/rg-jsp-network-001"
  schemaValidationEnabled = true
  type = "Microsoft.Network/expressRouteCircuits@2024-05-01"
}

resource "azapi_resource" "expressRouteCircuit" {
  body = {
    ignore_casing             = local.ignoreCasing
    ignore_missing_property   = local.ignoreMissingProperty
    location                  = local.location
    name                      = local.name
    schema_validation_enabled = local.schemaValidationEnabled
    type                      = local.type

    sku = {
      family = local.skuFamily
      name   = local.skuName
      tier   = local.skuTier
    }

    properties = {
      allowClassicOperations    = local.allowClassicOperations
      authorizations            = []
      circuitProvisioningState  = local.circuitProvisioningState
      enableDirectPortRateLimit = local.enableDirectPortRateLimit
      gatewayManagerEtag        = ""
      globalReachEnabled        = local.globalReachEnabled
      peerings                  = []
      serviceKey                = "53d96a39-433e-4e4e-a830-6089d3f37a3c"
      serviceProviderProperties = {
        bandwidthInMbps     = local.serviceProviderBandwidthMbps
        peeringLocation     = local.serviceProviderPeeringLocation
        serviceProviderName = local.serviceProviderName
      }
      serviceProviderProvisioningState = "NotProvisioned"
    }
  }
}
