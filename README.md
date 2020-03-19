# Flexible Engine EIP Terraform Module

Terraform module which creates EIP (Elastic IP addresses => Public IP addresses) resource on Flexible Engine

**WORK IN PROGRESS**

## Usage

```hcl
module "protected_eip" {
  source = "."

  eip_count = 3
  eip_name = "test"
  eip_bandwidth = 8
  protect_eip = true
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| eip\_bandwidth | Bandwidth of the EIP in Mbit/s | `number` | n/a | yes |
| eip\_count | Number of EIP to reserve | `number` | `1` | no |
| eip\_name | Name of the EIP | `string` | n/a | yes |
| ext\_net\_name | External network name (do not change) | `string` | `"admin_external_net"` | no |
| protect\_eip | Whether or not release EIP (public IP) after ECS destroy | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| public\_ip | List of Elastic IP Addresses |
