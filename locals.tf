locals {
  firewall_ip_configuration = [
    {
      name                 = "fw-pip01"
      public_ip_address_id = module.public_ip_address.public_ip_id
      subnet_id            = var.firewall_ip_configuration_subnetid
    }
  ]

  #effective_firewall_policy_id = var.create_firewall_policy ? module.firewall_policy[0].resource_id : var.firewall_policy_id

}
