
module "hub_firewall" {
  source                      = "../../"
  network_resource_group_name = var.network_resource_group_name
  azure_location              = azurerm_resource_group.modules["firewall"].location
  resource_group_name         = azurerm_resource_group.modules["firewall"].name
  azure_location_zones        = module.azure_regions.regions_by_name[var.azure_location].zones
  naming_map                  = local.name_map["firewall"]
  azure_resource_tags         = local.resource_tags

  #Firewall Configurations
  firewall_sku_name                  = var.firewall_sku_name
  firewall_sku_tier                  = var.firewall_sku_tier
  firewall_ip_configuration_subnetid = var.firewall_ip_configuration_subnetid
  # Firewall Policy Configurations

  create_firewall_policy                   = true
  firewall_policy_threat_intelligence_mode = var.firewall_policy_threat_intelligence_mode
  firewall_policy_policy_sku               = var.firewall_policy_policy_sku
}
