output "public_ip" {
  description = "List of Elastic IP Addresses"
  value       = var.protect_eip == false ? [for publicip in flexibleengine_vpc_eip_v1.eip_released.*.publicip: lookup(element(publicip, 0), "ip_address")] : [for publicip in flexibleengine_vpc_eip_v1.eip_protected.*.publicip: lookup(element(publicip, 0), "ip_address")]
}
