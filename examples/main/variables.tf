
# Naming
variable "company_name_short" {
  description = "Company short name which can be used in naming and tagging of resources."
  type        = string
  sensitive   = false
}

variable "subscription_name_short" {
  description = "Subscription short name which can be used in naming and tagging of resources."
  type        = string
  sensitive   = false
}

variable "module_names" {
  description = "An list of module names which can be used in naming and tagging of resources used with different module calls."
  type        = set(string)
  sensitive   = false
}

# Azure
variable "azure_subscription_id" {
  description = "The Azure subscription id used on the default azurerm provider."
  type        = string
  sensitive   = false
}

/*
Examples
https://datacenters.microsoft.com/globe/explore?info=geography_unitedkingdom
https://datacenters.microsoft.com/globe/explore?info=geography_europe
https://datacenters.microsoft.com/globe/explore?info=geography_unitedstates

https://learn.microsoft.com/en-us/azure/reliability/cross-region-replication-azure#azure-paired-regions
*/
variable "azure_geography" {
  description = "The Azure geography name for the target location."
  type        = string
  default     = null
  sensitive   = false
}

variable "azure_location" {
  description = "The Azure location to target all resources."
  type        = string
  sensitive   = false
}


variable "azure_resource_tags" {
  description = "Optional: Resource tags to add to all resources managed by this module."
  type        = map(string)
  sensitive   = false
  default     = {}
}

variable "network_resource_group_name" {
  type        = string
  description = "The resource group where the network resources are  deployed. Firewall must be created in network resource group"
}

variable "firewall_ip_configuration_subnetid" {
  description = "The subnet ID for the firewall IP configuration."
  type        = string
}

variable "firewall_sku_name" {
  type        = string
  description = "(Required) SKU name of the Firewall. Possible values are `AZFW_Hub` and `AZFW_VNet`. Changing this forces a new resource to be created."
  nullable    = false
}

variable "firewall_sku_tier" {
  type        = string
  description = "(Required) SKU tier of the Firewall. Possible values are `Premium`, `Standard` and `Basic`."
  nullable    = false
}

variable "firewall_policy_threat_intelligence_mode" {
  type        = string
  default     = null
  description = "(Optional) The operation mode for Threat Intelligence. Possible values are `Alert`, `Deny` and `Off`. Defaults to `Alert`."
}

variable "firewall_policy_policy_sku" {
  type        = string
  default     = null
  description = "(Optional) The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Changing this forces a new Firewall Policy to be created."
}