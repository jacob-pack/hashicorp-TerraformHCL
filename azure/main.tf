provider "azapi" {
  features {}
}

//In a production environment I would define the variables in one tfvars file/env (dev/tst/uat/prd)
//This would allow me to reuse main and adjust resource config per environment via variables

locals {

  //standard AzAPI-TF Vars
  ignoreCasing            = false
  ignoreMissingProperty   = false
  schemaValidationEnabled = true


  //system vars
  primaryRegion             = "eastus2"
  primaryRegionAbbreviation = "eu2"
  envString                 = "dev"
  systemName                = "jsp"
  orgName                   = "orgName"
  subscriptionId            = "6f224d82-ff8c-45ee-a61d-7fd2f93a73be"

  //subscription vars
  subscriptionResourceType = "Microsoft.Subscription/aliases@2024-08-01-preview"
  subscriptionParentId     = ""
  subscriptionTenantID     = ""
  subscriptionBillingScope = ""

  //vnet vars
  vnetResourceType                = "Microsoft.Network/virtualNetworks@2024-05-01"
  vnetAddressPrefixes             = "10.0.0.0/16"
  vnetEnableDdosProtection        = false
  vnetEncryptionEnabled           = "true"
  vnetEncryptionEnforcement       = "AllowUnencrypted"
  vnetPrivateEndpointVNetPolicies = "Disabled"
  vnetSubnets                     = ""
  vnetVirtualNetworkPeerings      = ""

  //expressRouteCircuit vars
  expressRouteCircuitResourceType               = "Microsoft.Network/expressRouteCircuits@2024-05-01"
  expressRouteCircuitSkuName                    = "Standard_MeteredData"
  expressRouteCircuitSkuFamily                  = "MeteredData"
  expressRouteCircuitSkuTier                    = "Standard"
  expressRouteCircuitAllowClassicOperations     = false
  expressRouteCircuitGlobalReachEnabled         = false
  expressRouteCircuitSvcProviderBandwidthMbps   = 50
  expressRouteCircuitSvcProviderPeeringLocation = "Atlanta"
  expressRouteCircuitSvcProviderName            = "Century Link Cloud Connect" //now known as Lumen


  //resourcegroup vars
  resourceGroupResourceType   = "Microsoft.Resources/resourceGroups@2025-04-01"
  allResourceGroupDescriptors = ["storage", "network", "devops"]
  storageResourceGroupID      = ""
  networkResourceGroupID      = ""

  //storageaccount vars
  storageAccountResourceType       = "Microsoft.Storage/storageAccounts@2023-05-01"
  storageAccountSku                = "Standard_LRS"
  storageAccountKind               = "StorageV2"
  storageAccessTier                = "Hot"
  allowBlobPublicAccess            = false
  allowCrossTenantReplication      = false
  allowSharedKeyAccess             = false
  defaultToOAuthAuthentication     = false
  dnsEndpointType                  = "Standard"
  encryptionKeySource              = "Microsoft.Storage"
  encryptionRequireInfraEncryption = false
  encryptionBlobEnabled            = true
  encryptionBlobKeyType            = "Account"
  encryptionFileEnabled            = true
  encryptionFileKeyType            = "Account"
  largeFileSharesState             = "Enabled"
  minimumTlsVersion                = "TLS1_2"
  networkAclsBypass                = "AzureServices"
  networkAclsDefaultAction         = "Deny"
  publicNetworkAccess              = "Disabled"
  supportsHttpsTrafficOnly         = true



}
// --------------------------- Modules Begin Below here ------------------------------------
module "subscription" {
  source       = "./modules/subscription"
  resourceType = local.subscriptionResourceType
  parentId     = local.subscriptionParentId
  tenantId     = local.subscriptionTenantID
  billingScope = local.subscriptionBillingScope
}

module "virtualNetwork" {
  source                      = "./modules/virtualNetwork"
  envString                   = local.envString
  systemName                  = local.systemName
  orgName                     = local.orgName
  parentId                    = local.networkResourceGroupID
  location                    = local.primaryRegion
  locationAbbreviation        = local.primaryRegionAbbreviation
  resourceType                = local.vnetResourceType
  schemaValidationEnabled     = local.schemaValidationEnabled
  ignoreMissingProperty       = local.ignoreMissingProperty
  ignoreCasing                = local.ignoreCasing
  addressPrefixes             = local.vnetAddressPrefixes
  enableDdosProtection        = local.vnetEnableDdosProtection
  encryptionEnabled           = local.vnetEncryptionEnabled
  encryptionEnforcement       = local.vnetEncryptionEnforcement
  privateEndpointVNetPolicies = local.vnetPrivateEndpointVNetPolicies
  subnets                     = local.vnetSubnets
  virtualNetworkPeerings      = local.vnetVirtualNetworkPeerings
}

module "resourceGroups" {
  source                      = "./modules/resourceGroup"
  envString                   = local.envString
  systemName                  = local.systemName
  orgName                     = local.orgName
  resourceGroupResourceType   = local.resourceGroupResourceType
  parentId                    = "" //In the TF/ARM model RGs are considered root resources. Otherwise I'd define subscriptionID here
  location                    = local.primaryRegion
  locationAbbreviation        = local.primaryRegionAbbreviation
  allResourceGroupDescriptors = local.allResourceGroupDescriptors
}

module "expressRouteCircuit" {
  source                         = "./modules/expressRouteCircuit"
  envString                      = local.envString
  systemName                     = local.systemName
  orgName                        = local.orgName
  parentId                       = local.networkResourceGroupID
  location                       = local.primaryRegion
  locationAbbreviation           = local.primaryRegionAbbreviation
  resourceType                   = local.expressRouteCircuitResourceType
  skuName                        = local.expressRouteCircuitSkuName
  skuFamily                      = local.expressRouteCircuitSkuFamily
  skuTier                        = local.expressRouteCircuitSkuTier
  allowClassicOperations         = local.expressRouteCircuitAllowClassicOperations
  globalReachEnabled             = local.expressRouteCircuitGlobalReachEnabled
  serviceProviderBandwidthMbps   = local.expressRouteCircuitSvcProviderBandwidthMbps
  serviceProviderPeeringLocation = local.expressRouteCircuitSvcProviderPeeringLocation
  serviceProviderName            = local.expressRouteCircuitSvcProviderName
  ignoreCasing                   = local.ignoreCasing
  schemaValidationEnabled        = local.schemaValidationEnabled
  ignoreMissingProperty          = local.ignoreMissingProperty
}


module "storageAccount" {
  source                           = "./modules/storageAccount"
  envString                        = local.envString
  systemName                       = local.systemName
  orgName                          = local.orgName
  parentId                         = local.storageResourceGroupID
  location                         = local.primaryRegion
  locationAbbreviation             = local.primaryRegionAbbreviation
  storageAccountResourceType       = local.storageAccountResourceType
  storageAccountSku                = local.storageAccountSku
  storageAccountKind               = local.storageAccountKind
  storageAccessTier                = local.storageAccessTier
  allowBlobPublicAccess            = local.allowBlobPublicAccess
  allowCrossTenantReplication      = local.allowCrossTenantReplication
  allowSharedKeyAccess             = local.allowSharedKeyAccess
  defaultToOAuthAuthentication     = local.defaultToOAuthAuthentication
  dnsEndpointType                  = local.dnsEndpointType
  encryptionKeySource              = local.encryptionKeySource
  encryptionRequireInfraEncryption = local.encryptionRequireInfraEncryption
  encryptionBlobEnabled            = local.encryptionBlobEnabled
  encryptionBlobKeyType            = local.encryptionBlobKeyType
  encryptionFileEnabled            = local.encryptionFileEnabled
  encryptionFileKeyType            = local.encryptionFileKeyType
  largeFileSharesState             = local.largeFileSharesState
  minimumTlsVersion                = local.minimumTlsVersion
  networkAclsBypass                = local.networkAclsBypass
  networkAclsDefaultAction         = local.networkAclsDefaultAction
  publicNetworkAccess              = local.publicNetworkAccess
  supportsHttpsTrafficOnly         = local.supportsHttpsTrafficOnly
  ignoreCasing                     = local.ignoreCasing
  schemaValidationEnabled          = local.schemaValidationEnabled
  ignoreMissingProperty            = local.ignoreMissingProperty
}

