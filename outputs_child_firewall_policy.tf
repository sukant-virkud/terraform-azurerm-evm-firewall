

output "child_firewall_policy_id" {
  value = var.create_child_firewall_policy && length(module.child_firewall_policy) > 0 ? module.child_firewall_policy[0].resource_id : null
}