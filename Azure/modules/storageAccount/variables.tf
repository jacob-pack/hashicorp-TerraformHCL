variable "name" {
  type        = string
  description = "storageAccountName"
}
variable "location" {
  type        = string
  description = "storage account location"
}
variable "resource_group_name" {
  type        = string
  description = "resource group name that holds the storage account"

}
variable "account_tier" {
  type        = string
  description = "storage account tier"

}
variable "account_replication_type" {
  type        = string
  description = "storage account replication type"

}
