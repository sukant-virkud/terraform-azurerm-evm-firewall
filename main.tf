# DELETE: temporary to satisfy TFLint rules
resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.azure_location

  tags = var.azure_resource_tags
}
