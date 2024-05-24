# PIHOLE installation

## What is Pi-hole?

Pi-hole is a network-wide ad blocker that acts as a DNS sinkhole. It is designed to block ads, trackers, and other unwanted content at the network level, before they reach your devices. By redirecting DNS queries to a black hole, Pi-hole effectively blocks ads across all devices connected to your network, including smartphones, tablets, computers, and smart TVs.

To install Pi-hole, follow the steps below:

```
tofu init
tofu plan -var-file=clusters/proxmox/dev/tofu.tfvars -var="proxmox_token_id=${PROXMOX_TOKEN_ID}" -var="proxmox_token_secret=${PROXMOX_TOKEN_SECRET}"
tofu apply --auto-approve -var-file=clusters/proxmox/dev/tofu.tfvars -var="proxmox_token_id=${PROXMOX_TOKEN_ID}" -var="proxmox_token_secret=${PROXMOX_TOKEN_SECRET}"
```
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vm_single_instance"></a> [vm\_single\_instance](#module\_vm\_single\_instance) | github.com/Ngel-Castro/proxmox_single_vm_module | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_full_clone"></a> [full\_clone](#input\_full\_clone) | If you required full clone or not | `bool` | `false` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | Memory for VM | `number` | `2048` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the VM | `string` | n/a | yes |
| <a name="input_network_bridge"></a> [network\_bridge](#input\_network\_bridge) | Network bridge for VM | `string` | `"vmbr0"` | no |
| <a name="input_proxmox_host"></a> [proxmox\_host](#input\_proxmox\_host) | Value for proxmox cluster/server | `string` | `"https://192.168.0.131:8006/api2/json"` | no |
| <a name="input_proxmox_token_id"></a> [proxmox\_token\_id](#input\_proxmox\_token\_id) | Proxmox Token user@pam!token\_id | `string` | `"terraform-prov@pve!terraform"` | no |
| <a name="input_proxmox_token_secret"></a> [proxmox\_token\_secret](#input\_proxmox\_token\_secret) | Proxmox token secret | `string` | n/a | yes |
| <a name="input_storage"></a> [storage](#input\_storage) | Storage location in PROXMOX node | `string` | `"samsung_ssd"` | no |
| <a name="input_target_node"></a> [target\_node](#input\_target\_node) | Proxmox target node | `string` | n/a | yes |
| <a name="input_template_name"></a> [template\_name](#input\_template\_name) | If you required full clone or not | `string` | `"cluster-template"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pihole-ip"></a> [pihole-ip](#output\_pihole-ip) | The IP address of the Pi-hole VM |
