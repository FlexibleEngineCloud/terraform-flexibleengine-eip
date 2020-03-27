variable "eip_count" {
  description = "Number of EIP to reserve"
  default     = 1
  type        = number
}

variable "eip_name" {
  description = "Name of the EIP"
  type        = string
}

variable "eip_bandwidth" {
  description = "Bandwidth of the EIP in Mbit/s"
  default     = null
  type        = number
}

variable "protect_eip" {
  description = "Whether or not release EIP (public IP) after ECS destroy"
  default     = false
  type        = bool
}

variable "ext_net_name" {
  description = "External network name (do not change)"
  default     = "admin_external_net"
  type        = string
}
