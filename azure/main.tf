provider "azapi" {
  features {}
}

//In a production environment I would define the variables in one tfvars file/env (dev/tst/uat/prd)
//This would allow me to reuse main and adjust resource config per envioronment via variables

locals {

  //standard AzAPI-TF Vars
  ignore_casing             = false
  ignore_missing_property   = false
  schema_validation_enabled = true


  //system vars
  primaryRegion             = "eastus2"
  primaryRegionAbbreviation = "eu2"
  envString                 = "dev"
  systemName                = "jsp"
  orgName                   = "orgName"
  subscriptionId            = "6f224d82-ff8c-45ee-a61d-7fd2f93a73be"

  //resourcegroup vars
  allResourceGroupDescriptors = ["storage", "network", "devops"]
  storageResourceGroupID      = ""

  //storageaccount vars
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

module "resourceGroups" {
  source                      = "./modules/resourceGroup"
  envString                   = local.envString
  systemName                  = local.systemName
  orgName                     = local.orgName
  parentId                    = "" //In the TF/ARM model RGs are considered root resources. Otherwise I'd define subscriptionID here
  location                    = local.primaryRegion
  locationAbbreviation        = local.primaryRegionAbbreviation
  allResourceGroupDescriptors = local.allResourceGroupDescriptors
}

module "storageAccount" {
  source                           = "./modules/storageAccount"
  envString                        = local.envString
  systemName                       = local.systemName
  orgName                          = local.orgName
  parentId                         = local.storageResourceGroupID
  location                         = local.primaryRegion
  locationAbbreviation             = local.primaryRegionAbbreviation
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
  ignoreCasing                     = local.ignore_casing
  schemaValidationEnabled          = local.schema_validation_enabled
  ignoreMissingProperty            = local.ignore_missing_property

}

module "virtualNetwork" {
  source = "./modules/virtualNetwork"


}
