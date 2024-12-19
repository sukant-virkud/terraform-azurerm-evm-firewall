locals {
  resource_tags = merge(
    var.azure_resource_tags, {
      environment_name = terraform.workspace
    }
  )

  name_map = {
    for module_k, module_v in module.naming : module_k => {
      for resource_k, resource_v in module_v : resource_k => {
        name = resource_v.name
      }
      if can(resource_v.name)
    }
  }
}
