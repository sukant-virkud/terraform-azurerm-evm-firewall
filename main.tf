/*

    The naming map is generated in the root module and passed to the child EVM module as the input 'naming_map'

    Example usage:
    var.naming_map.[resource type].name

    To name or reference the resources:

    Resource Group
    var.naming_map.resource_group.name

    Firewall
    var.naming_map.firewall.name

*/


# DELETE: temporary to satisfy TFLint rules
resource "azurerm_resource_group" "this" {
  name     = var.naming_map.resource_group.name
  location = var.azure_location

  tags = var.azure_resource_tags
}
