output "resource_group_name_firewall" {
  description = "The Resource Group name for the module example"
  value       = azurerm_resource_group.modules["firewall"].name
  sensitive   = false
}
