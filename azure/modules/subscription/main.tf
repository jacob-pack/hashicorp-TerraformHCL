resource "azapi_resource" "symbolicname" {
  type = "Microsoft.Subscription/aliases@2024-08-01-preview"
  name = "string"
  parent_id = "string"
  body = {
    properties = {
      additionalProperties = {
        subscriptionTenantId = "658333d4-2d0b-482d-b477-9b958bfc1dbb"
      }
      billingScope = "string"
      displayName = "Azure Personal"
    }
  }
}