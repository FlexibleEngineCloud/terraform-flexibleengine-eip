module "protected_eip" {
  source = "../.."

  eip_count = 3
  eip_name = "test"
  eip_bandwidth = 8
  protect_eip = true
}