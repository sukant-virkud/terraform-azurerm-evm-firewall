output "resource_group_name_firewall" {
  description = "The Resource Group name for the module example"
  value       = azurerm_resource_group.modules["firewall"].name
  sensitive   = false
}

output "fw_id" {
  description = "The resource ID of the azure firewall"
  value       = module.hub_firewall.firewall_id
}

output "pip_id" {
  description = "The resource ID of the public ip"
  value       = module.hub_firewall.public_ip_id
}

output "public_ip" {
  description = "The assigned IP address of the public IP"
  value       = module.hub_firewall.public_ip_id
}

output "parent_fwp_id" {
  description = "The assigned IP address of the public IP"
  value       = module.hub_firewall.parent_firewall_policy_id
}

output "child_fwp_id" {
  description = "The assigned IP address of the public IP"
  value       = module.hub_firewall.child_firewall_policy_id
}



