variable "name" {
  type        = string
  description = "resource group name"
}
variable "location" {
  type        = string
  description = "resource group location"
}

variable "parentId" {
  type        = string
  description = "ID of the parent subscription"
}
