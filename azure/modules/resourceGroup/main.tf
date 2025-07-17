resource "azapi_resource" "resourceGroup" {
  type = "Microsoft.Resources/resourceGroups@2025-04-01"
  name = resourceGroup
  parent_id = parentId
  location = 
  tags = {
    {customized property} = "string"
  }
  body = {
    managedBy = "string"
    properties = {
    }
  }
}