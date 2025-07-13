resource "azapi_resource" "expressRouteCircuit" {
  body = {
    properties = {
      allowClassicOperations    = false
      authorizations            = []
      circuitProvisioningState  = "Enabled"
      enableDirectPortRateLimit = false
      gatewayManagerEtag        = ""
      globalReachEnabled        = false
      peerings                  = []
      serviceKey                = "53d96a39-433e-4e4e-a830-6089d3f37a3c"
      serviceProviderProperties = {
        bandwidthInMbps     = 50
        peeringLocation     = "Atlanta"
        serviceProviderName = "CenturyLink Cloud Connect"
      }
      serviceProviderProvisioningState = "NotProvisioned"
    }
    sku = {
      family = "MeteredData"
      name   = "Standard_MeteredData"
      tier   = "Standard"
    }
  }
  ignore_casing             = false
  ignore_missing_property   = true
  location                  = "eastus"
  name                      = "excir-jsp-eastus-001"
  parent_id                 = "/subscriptions/6f224d82-ff8c-45ee-a61d-7fd2f93a73be/resourceGroups/rg-jsp-network-001"
  schema_validation_enabled = true
  type                      = "Microsoft.Network/expressRouteCircuits@2024-05-01"
}
