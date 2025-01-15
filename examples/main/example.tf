
module "hub_firewall" {
  source               = "../../"
  network_group_name   = "rg-ensrtf-eus2-prod-con-hub"
  azure_location       = azurerm_resource_group.modules["firewall"].location
  resource_group_name  = azurerm_resource_group.modules["firewall"].name
  azure_location_zones = module.azure_regions.regions_by_name[var.azure_location].zones
  naming_map           = local.name_map["firewall"]
  azure_resource_tags  = local.resource_tags
  #Firewall Configurations
  firewall_sku_name                  = "AZFW_VNet"
  firewall_sku_tier                  = "Standard"
  firewall_ip_configuration_subnetid = "/subscriptions/cea31a73-c42c-4b17-b83d-c629142bf942/resourceGroups/rg-ensrtf-eus2-prod-con-hub/providers/Microsoft.Network/virtualNetworks/vnet-ensrtf-eus2-prod-con-hub/subnets/AzureFirewallSubnet"
  # Firewall Policy Configurations
  create_firewall_policy                   = true
  firewall_policy_threat_intelligence_mode = "Alert"
  firewall_policy_policy_sku               = "Standard"


}
