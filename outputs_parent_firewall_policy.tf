output "parent_firewall_policy_id" {
  description = "The resource ID of the firewall parent policy."
  value       = var.create_parent_firewall_policy && length(module.parent_firewall_policy) > 0 ? module.parent_firewall_policy[0].resource_id : null
}
