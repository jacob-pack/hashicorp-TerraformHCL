variable "location" {
  type        = string
  description = "resource group region location"
}

variable "locationAbbreviation"{
  type = string
  description = "region abbreivation"
}

variable "parentId" {
  type        = string
  description = "ID of the parent subscription"
}

variable "allResourceGroupDescriptors" {
  type        = list(string)
  description = "list of group name descriptor strings"
}

variable "envString" {
  type        = string
  description = "represents the abbreviation for the system environment"
}

variable "systemName" {
  type        = string
  description = "represents the abbreviation for the system"
}

variable "orgName" {
  type        = string
  description = "represents the abbreviation for the org name"
}

