locals {
  name = "excir-${var.orgName}-${var.locationAbbreviation}-001"
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
