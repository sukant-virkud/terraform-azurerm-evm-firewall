


module "child_firewall_policy" {
    
  source                                        = "Azure/avm-res-network-firewallpolicy/azurerm"
  version                                       = "0.3.2"  
  count                                         = var.create_child_firewall_policy ? 1 : 0
  enable_telemetry                              = var.child_firewall_policy_enable_telemetry
  name                                          = "${var.naming_map.firewall_policy.name}-child"
  location                                      = var.azure_location
  resource_group_name                           = var.resource_group_name
  firewall_policy_base_policy_id                = var.firewall_policy_base_policy_id
  firewall_policy_dns                           = var.child_firewall_policy_dns
  firewall_policy_sku                           = var.child_firewall_policy_sku 
  tags                                          = var.azure_resource_tags 

}
