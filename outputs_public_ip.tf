


output "public_ip_id" {
  description = "The ID of the created public IP address"
  value       = module.public_ip_address.public_ip_id
}


output "public_ip_address" {
  description = "The assigned IP address of the public IP"
  value       = module.public_ip_address.public_ip_address
}
