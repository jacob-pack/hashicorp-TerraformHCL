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
  description = "ID of the parent subscription"
}
variable "allResourceGroupDescriptors" {
  type        = list(string)
  description = "list of group name descriptor strings"
}
variable "resourceGroupResourceType" {
  type = string
}

