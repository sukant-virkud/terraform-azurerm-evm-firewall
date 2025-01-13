output "public_ip_id" {
  description = "The resource ID of the firewall public ip address."
  value       = module.public_ip_address.public_ip_id
}


output "public_ip_address" {
  description = "The IP address of the firewall public ip."
  value       = module.public_ip_address.public_ip_address
}
