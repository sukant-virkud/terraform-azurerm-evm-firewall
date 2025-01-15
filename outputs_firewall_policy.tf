output "firewall_policy_id" {
  description = "The resource ID of the firewall parent policy."
  value       = var.create_firewall_policy && length(module.firewall_policy) > 0 ? module.firewall_policy[0].resource_id : null
}
