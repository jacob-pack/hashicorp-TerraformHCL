locals {
  resourceName = "Azure Personal" //naming restriction
}

resource "azapi_resource" "subscription" {
  type      = var.resourceType
  name      = local.resourceName
  parent_id = var.parentId
  body = {
    properties = {
      additionalProperties = {
        subscriptionTenantId = var.tenantId
      }
      billingScope = var.billingScope
      displayName  = local.resourceName
    }
  }
}
