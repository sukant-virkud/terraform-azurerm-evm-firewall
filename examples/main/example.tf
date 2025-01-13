
module "hub_firewall" {
  source = "../../"

  azure_location       = azurerm_resource_group.modules["firewall"].location
  resource_group_name  = azurerm_resource_group.modules["firewall"].name
  azure_location_zones = module.azure_regions.regions_by_name[var.azure_location].zones
  naming_map           = local.name_map["firewall"]
  azure_resource_tags  = local.resource_tags


  #Public IP Configurations
  allocation_method    = "Static"
  pip_sku              = "Standard"
  pip_sku_tier         = "Regional"
  pip_enable_telemetry = false

  #Firewall Configurations
  firewall_sku_name   = "AZFW_VNet"
  firewall_sku_tier   = "Standard"
  fw_enable_telemetry = false
  firewall_ip_configuration = [
    {
      name                 = "fw-pip01"
      public_ip_address_id = module.hub_firewall.public_ip_id
      subnet_id            = "/subscriptions/cea31a73-c42c-4b17-b83d-c629142bf942/resourceGroups/rg-temp-tf-ignite-hub/providers/Microsoft.Network/virtualNetworks/temp-tf-ignite-hub-vnet/subnets/AzureFirewallSubnet"
    }
  ]
  firewall_management_ip_configuration = null
  firewall_private_ip_ranges           = null
  firewall_policy_id                   = module.hub_firewall.parent_firewall_policy_id
  diagnostic_settings                  = {}

  #Parent Firewall Policy Configurations
  create_parent_firewall_policy                        = true
  parent_firewall_policy_enable_telemetry              = false
  parent_firewall_policy_threat_intelligence_mode      = "Alert"
  parent_firewall_policy_threat_intelligence_allowlist = null
  parent_firewall_policy_policy_sku                    = "Standard"
  parent_firewall_policy_intrusion_detection           = null

  #Child Firewall Policy Configurations
  create_child_firewall_policy           = true
  child_firewall_policy_enable_telemetry = false
  firewall_policy_base_policy_id         = module.hub_firewall.parent_firewall_policy_id
  child_firewall_policy_sku              = "Standard"
  child_firewall_policy_dns = {
    proxy_enabled = true
    servers       = ["8.8.8.8", "8.8.4.4"]
  }

}
