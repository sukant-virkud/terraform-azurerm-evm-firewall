

module "public_ip_address" {

  source  = "Azure/avm-res-network-publicipaddress/azurerm"
  version = "0.1.2"

  resource_group_name = var.resource_group_name
  name                = var.naming_map.public_ip.name
  location            = var.azure_location
  allocation_method   = var.allocation_method
  sku                 = var.pip_sku
  zones               = var.azure_location_zones
  tags                = var.azure_resource_tags
  sku_tier            = var.pip_sku_tier
  enable_telemetry    = var.pip_enable_telemetry
}
