module "naming" {
  for_each = var.module_names

  source  = "azure/naming/azurerm"
  version = "0.4.1"

  suffix = tolist(
    [
      var.company_name_short,
      module.azure_region.short_name,
      terraform.workspace,
      var.subscription_name_short,
      each.key
    ]
  )
}
