variable "systemName" {
  type        = string
  description = "system name"
}
variable "location" {
  type        = string
  description = "storage account location"
}
variable "locationAbbreviation" {
  type        = string
  description = "storage account location abbreviation"
}
variable "envString" {
  type        = string
  description = "environment"

}
variable "orgName" {
  type        = string
  description = "org name"

}
variable "parentId" {
  type        = string
  description = "storage account resource group id"

}
variable "storageAccountSku" {
  type = string
}
variable "storageAccountKind" {
  type = string
}
variable "storageAccessTier" {
  type = string
}
variable "allowBlobPublicAccess" {
  type = bool
}
variable "allowCrossTenantReplication" {
  type = bool
}
variable "allowSharedKeyAccess" {
  type = bool
}
variable "defaultToOAuthAuthentication" {
  type = bool
}
variable "dnsEndpointType" {
  type = string
}
variable "encryptionKeySource" {
  type = string
}
variable "encryptionRequireInfraEncryption" {
  type = bool
}
variable "encryptionBlobEnabled" {
  type = bool
}
variable "encryptionBlobKeyType" {
  type = string
}
variable "encryptionFileEnabled" {
  type = bool
}
variable "encryptionFileKeyType" {
  type = string
}
variable "largeFileSharesState" {
  type = string
}
variable "minimumTlsVersion" {
  type = string
}
variable "networkAclsBypass" {
  type = string
}
variable "networkAclsDefaultAction" {
  type = string
}
variable "publicNetworkAccess" {
  type = string
}
variable "supportsHttpsTrafficOnly" {
  type = bool
}
variable "ignoreCasing" {
  type = bool
}
variable "ignoreMissingProperty" {
  type = bool
}
variable "schemaValidationEnabled" {
  type = bool
}
variable "storageAccountResourceType" {
  type = string
}






