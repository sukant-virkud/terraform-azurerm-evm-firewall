company_name_short                       = "ensevm"
subscription_name_short                  = "con"
module_names                             = ["firewall"]
azure_location                           = "eastus2"
network_resource_group_name              = "rg-ensrtf-eus2-prod-con-hub"
firewall_sku_name                        = "AZFW_VNet"
firewall_sku_tier                        = "Standard"
firewall_ip_configuration_subnetid       = "/subscriptions/xxxx-xxxx-xxxx-xxxx-xxxx/resourceGroups/rg-ensrtf-eus2-prod-con-hub/providers/Microsoft.Network/virtualNetworks/vnet-ensrtf-eus2-prod-con-hub/subnets/AzureFirewallSubnet"
firewall_policy_threat_intelligence_mode = "Alert"
firewall_policy_policy_sku               = "Standard"




/*
Sensitive inputs should be passed as pipeline environment variables

azure_subscription_id = "xxx"
*/
