output "firewall_id" {
  description = "The resource ID of the firewall."
  value       = module.firewall.resource_id
}

output "firewall_name" {
  description = "The name of the firewall."
  value       = module.firewall.resource.name
}

output "firewall_ip_configuration" {
  description = "The Private IP address of the Azure Firewall."
  value       = module.firewall.resource.ip_configuration
}
