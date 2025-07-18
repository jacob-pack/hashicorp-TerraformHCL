resource "azapi_resource" "storageAccountResource" {
  ignore_casing             = var.ignoreCasing
  ignore_missing_property   = var.ignoreMissingProperty
  location                  = var.location
  name                      = "st${var.systemName}${var.envString}001"
  parent_id                 = ""
  schema_validation_enabled = var.schemaValidationEnabled
  type                      = "Microsoft.Storage/storageAccounts@2023-05-01"
  body = {
    sku = {
      name = var.storageAccountSku
    }
    kind = var.storageAccountKind
    properties = {
      accessTier                   = var.storageAccesstier
      allowBlobPublicAccess        = var.allowBlobPulicAccess
      allowCrossTenantReplication  = var.allowCrossTenantReplication
      allowSharedKeyAccess         = var.allowSharedKeyAccess
      defaultToOAuthAuthentication = var.defaultToOAuthAuthentication
      dnsEndpointType              = var.dnsEndpointType
      encryption = {
        keySource                       = var.encryptionKeySource
        requireInfrastructureEncryption = var.encryptionRequireInfraEncryption
        services = {
          blob = {
            enabled = var.encryptBlobEnabled
            keyType = var.encryptionBlobKeyType
          }
          file = {
            enabled = var.encryptionFileEnabled
            keyType = var.encryptionFileKeyType
          }
        }
      }
      largeFileSharesState = var.largeFileSharesState
      minimumTlsVersion    = var.minimumTlsVersion
      networkAcls = {
        bypass              = var.networkAclsBypass
        defaultAction       = var.networkAclsDefaultAction
        ipRules             = []
        virtualNetworkRules = []
      }
      publicNetworkAccess      = var.publicNetworkAccess
      supportsHttpsTrafficOnly = var.supportHttpsTrafficOnly
    }

  }
}
