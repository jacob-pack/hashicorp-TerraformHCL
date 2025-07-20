//--------standard system and environment vars below-------
variable "envString" {
  type = string
}
variable "systemName" {
  type = string
}
variable "orgName" {
  type = string
}
variable "location" {
  type = string
}
variable "locationAbbreviation" {
  type = string
}
variable "ignoreCasing" {
  type = string
}
variable "schemaValidationEnabled" {
  type = string
}
variable "ignoreMissingProperty" {
  type = string
}
//-------------Resource Vars Below--------------

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
variable "storageAccountResourceType" {
  type = string
}






