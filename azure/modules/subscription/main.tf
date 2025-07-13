locals {
  resourceType = "Microsoft.Subscription/aliases@2024-08-01-preview"
  resourceName = "Azure Personal"
  resourceParentID = "/providers/Microsoft.Management/managementGroups/658333d4-2d0b-482d-b477-9b958bfc1dbb"
  resourceSubscriptionTenantID = "658333d4-2d0b-482d-b477-9b958bfc1dbb"
  resourceBillingScope = "/providers/Microsoft.Billing/billingAccounts/f4e807f8-12bb-5ba1-55de-bc53d3864819:bb0d1029-3709-4e3a-aaec-c741e3e059bb_2019-05-31"
}

resource "azapi_resource" "subscription" {
  type = local.resourceType
  name = local.resourceName
  parent_id = local.resourceParentID
  body = {
    properties = {
      additionalProperties = {
        subscriptionTenantId = local.resourceSubscriptionTenantID
      }
      billingScope = local.resourceBillingScope
      displayName = local.resourceName
    }
  }
}