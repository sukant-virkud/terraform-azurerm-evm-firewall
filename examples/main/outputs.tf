output "resource_group_name_firewall" {
  description = "The Resource Group name for the module example"
  value       = azurerm_resource_group.modules["firewall"].name
  sensitive   = false
}

output "firewall_resource_id" {
  description = "The resource ID of the azure firewall"
  value       = module.hub_firewall.firewall_id
}

output "firewall_resource_name" {
  description = "The resource ID of the azure firewall"
  value       = module.hub_firewall.firewall_name
}

output "firewall_resource_ip_configuration" {
  description = "The resource ID of the azure firewall"
  value       = module.hub_firewall.firewall_ip_configuration
}

output "public_ip_resource_id" {
  description = "The resource ID of the public ip"
  value       = module.hub_firewall.public_ip_id
}

output "public_ip_resource_address" {
  description = "The assigned IP address of the public IP"
  value       = module.hub_firewall.public_ip_address
}

output "firewall_policy_resource_id" {
  description = "The assigned IP address of the public IP"
  value       = module.hub_firewall.firewall_policy_id
}
