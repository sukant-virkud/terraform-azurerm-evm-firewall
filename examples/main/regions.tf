# Returns multiple regions containing available zones
module "azure_regions" {
  source  = "azure/avm-utl-regions/azurerm"
  version = "0.3.0"

  enable_telemetry   = false
  geography_filter   = var.azure_geography
  recommended_filter = false
}

# Returns a single region containing geo-codes used in resource naming
module "azure_region" {
  source  = "azurerm/locations/azure"
  version = "0.2.4"

  location = var.azure_location
}
