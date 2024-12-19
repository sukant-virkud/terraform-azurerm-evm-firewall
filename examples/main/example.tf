
module "example" {
  source = "../../"

  azure_location       = azurerm_resource_group.modules["firewall"].location
  azure_location_zones = module.azure_regions.regions_by_name[var.azure_location].zones
  naming_map           = local.name_map["firewall"]
  azure_resource_tags  = local.resource_tags
}
