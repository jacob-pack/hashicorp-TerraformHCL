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
  type = string
}
variable "resourceType" {
  type = string
}
variable "skuName" {
  type = string
}
variable "skuFamily" {
  type = string
}
variable "skuTier" {
  type = string
}
variable "allowClassicOperations" {
  type = bool
}
variable "globalReachEnabled" {
  type = bool
}
variable "serviceProviderBandwidthMbps" {
  type = number
}
variable "serviceProviderPeeringLocation" {
  type = string
}
variable "serviceProviderName" {
  type = string
}
