



variable "create_firewall_policy" {
  type        = bool
  description = "condition whetehr the FW policy to be created or not"
  nullable    = false
  default = false
}

variable "firewall_policy_threat_intelligence_allowlist" {
  type = object({
    fqdns        = optional(set(string))
    ip_addresses = optional(set(string))
  })
  default     = null
  description = <<-EOT
 - `fqdns` - (Optional) A list of FQDNs that will be skipped for threat detection.
 - `ip_addresses` - (Optional) A list of IP addresses or CIDR ranges that will be skipped for threat detection.
EOT
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

variable "firewall_policy_intrusion_detection" {
  type = object({
    mode           = optional(string)
    private_ranges = optional(list(string))
    signature_overrides = optional(list(object({
      id    = optional(string)
      state = optional(string)
    })))
    traffic_bypass = optional(list(object({
      description           = optional(string)
      destination_addresses = optional(set(string))
      destination_ip_groups = optional(set(string))
      destination_ports     = optional(set(string))
      name                  = string
      protocol              = string
      source_addresses      = optional(set(string))
      source_ip_groups      = optional(set(string))
    })))
  })
  default     = null
  description = <<-EOT
 - `mode` - (Optional) In which mode you want to run intrusion detection: `Off`, `Alert` or `Deny`.
 - `private_ranges` - (Optional) A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.

 ---
 `signature_overrides` block supports the following:
 - `id` - (Optional) 12-digit number (id) which identifies your signature.
 - `state` - (Optional) state can be any of `Off`, `Alert` or `Deny`.

 ---
 `traffic_bypass` block supports the following:
 - `description` - (Optional) The description for this bypass traffic setting.
 - `destination_addresses` - (Optional) Specifies a list of destination IP addresses that shall be bypassed by intrusion detection.
 - `destination_ip_groups` - (Optional) Specifies a list of destination IP groups that shall be bypassed by intrusion detection.
 - `destination_ports` - (Optional) Specifies a list of destination IP ports that shall be bypassed by intrusion detection.
 - `name` - (Required) The name which should be used for this bypass traffic setting.
 - `protocol` - (Required) The protocols any of `ANY`, `TCP`, `ICMP`, `UDP` that shall be bypassed by intrusion detection.
 - `source_addresses` - (Optional) Specifies a list of source addresses that shall be bypassed by intrusion detection.
 - `source_ip_groups` - (Optional) Specifies a list of source IP groups that shall be bypassed by intrusion detection.
EOT
}

variable "firewall_policy_base_policy_id" {
  type        = string
  default     = null
  description = "(Optional) The ID of the base Firewall Policy."
}

variable "firewall_policy_dns" {
  type = object({
    proxy_enabled = optional(bool)
    servers       = optional(list(string))
  })
  default = {
    proxy_enabled = true
    servers       = []
  }
  description = <<-EOT
 - `proxy_enabled` - (Optional) Whether to enable DNS proxy on Firewalls attached to this Firewall Policy? Defaults to `false`.
 - `servers` - (Optional) A list of custom DNS servers' IP addresses.
EOT
}
