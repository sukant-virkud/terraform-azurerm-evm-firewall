resource "azurerm_resource_group" "modules" {
  for_each = var.module_names

  name     = local.name_map[each.key].resource_group.name
  location = var.azure_location

  tags = local.resource_tags
}
