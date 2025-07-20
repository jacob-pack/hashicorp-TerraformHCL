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
    ignore_casing             = var.ignoreCasing
    ignore_missing_property   = var.ignoreMissingProperty
    location                  = var.location
    name                      = var.name
    schema_validation_enabled = var.schemaValidationEnabled
    type                      = var.type

    sku = {
      family = var.skuFamily
      name   = var.skuName
      tier   = var.skuTier
    }

    properties = {
      allowClassicOperations    = var.allowClassicOperations
      authorizations            = []
      circuitProvisioningState  = var.circuitProvisioningState
      enableDirectPortRateLimit = var.enableDirectPortRateLimit
      gatewayManagerEtag        = ""
      globalReachEnabled        = var.globalReachEnabled
      peerings                  = []
      serviceKey                = "53d96a39-433e-4e4e-a830-6089d3f37a3c"
      serviceProviderProperties = {
        bandwidthInMbps     = var.serviceProviderBandwidthMbps
        peeringLocation     = var.serviceProviderPeeringLocation
        serviceProviderName = var.serviceProviderName
      }
      serviceProviderProvisioningState = "NotProvisioned"
    }
  }
}
