variable "naming_map" {
  description = "A map containing Azure resource anmes aligned to the Cloud Adoption Framework."
  type        = any
  sensitive   = false
}

variable "azure_location" {
  description = "The Azure target location for all resources managed by this module."
  type        = string
  sensitive   = false
}

variable "azure_location_zones" {
  description = "The Azure target location available zones"
  type        = set(number)
  sensitive   = false
}


variable "azure_resource_tags" {
  description = "Resource tags to add to all resources managed by this module."
  type        = map(string)
  sensitive   = false
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the resources will be deployed."
}

variable "network_resource_group_name" {
  type        = string
  description = "The resource group where the network resources are  deployed. Firewall must be created in network resource group"
}

variable "enable_telemetry" {
  type        = bool
  default     = true
  description = <<DESCRIPTION
This variable controls whether or not telemetry is enabled for the module.
For more information see https://aka.ms/avm/telemetryinfo.
If it is set to false, then no telemetry will be collected.
DESCRIPTION
}
