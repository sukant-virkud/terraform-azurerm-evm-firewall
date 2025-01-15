


variable "pip_sku" {
  type        = string
  description = "The SKU of the public IP address."
  default     = "Standard"
  validation {
    condition     = can(regex("^(Basic|Standard)$", var.pip_sku))
    error_message = "The SKU must be either 'Basic' or 'Standard'."
  }

}

variable "pip_sku_tier" {
  type        = string
  description = "The tier of the SKU of the public IP address."
  default     = "Regional" #check this with Seif
  validation {
    condition     = can(regex("^(Global|Regional)$", var.pip_sku_tier))
    error_message = "The SKU tier must be either 'Global' or 'Regional'."
  }
}

variable "allocation_method" {
  type        = string
  description = "The allocation method to use."
  default     = "Static"
  validation {
    condition     = can(regex("^(Static|Dynamic)$", var.allocation_method))
    error_message = "The allocation method must be either 'Static' or 'Dynamic'."
  }
}

variable "pip_enable_telemetry" {
  type        = bool
  default     = false
  description = <<DESCRIPTION
This variable controls whether or not telemetry is enabled for the module.
For more information see https://aka.ms/avm/telemetryinfo.
If it is set to false, then no telemetry will be collected.
DESCRIPTION
}
