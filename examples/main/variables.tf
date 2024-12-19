
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
