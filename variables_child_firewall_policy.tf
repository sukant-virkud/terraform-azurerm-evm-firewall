



variable "child_firewall_policy_enable_telemetry" {
  type        = bool
  default     = true
  description = <<DESCRIPTION
This variable controls whether or not telemetry is enabled for the module.
For more information see https://aka.ms/avm/telemetryinfo.
If it is set to false, then no telemetry will be collected.
DESCRIPTION
}

variable "create_child_firewall_policy" {
  type        = string
  description = "condition whetehr the FW policy to be created or not"
  nullable    = false
}

variable "firewall_policy_base_policy_id" {
  type        = string
  default     = null
  description = "(Optional) The ID of the base Firewall Policy."
}

variable "child_firewall_policy_dns" {
  type = object({
    proxy_enabled = optional(bool)
    servers       = optional(list(string))
  })
  default     = null
  description = <<-EOT
 - `proxy_enabled` - (Optional) Whether to enable DNS proxy on Firewalls attached to this Firewall Policy? Defaults to `false`.
 - `servers` - (Optional) A list of custom DNS servers' IP addresses.
EOT
}

variable "child_firewall_policy_sku" {
  type        = string
  default     = null
  description = "(Optional) The SKU Tier of the Firewall Policy. Possible values are `Standard`, `Premium` and `Basic`. Changing this forces a new Firewall Policy to be created."
}
