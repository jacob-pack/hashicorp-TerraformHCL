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

variable "resourceType" {
  type = string
}
variable "parentId" {
  type = string
}
variable "tenantId" {
  type = string
}
variable "billingScope" {
  type = string
}
