# PIHOLE installation

## What is Pi-hole?

Pi-hole is a network-wide ad blocker that acts as a DNS sinkhole. It is designed to block ads, trackers, and other unwanted content at the network level, before they reach your devices. By redirecting DNS queries to a black hole, Pi-hole effectively blocks ads across all devices connected to your network, including smartphones, tablets, computers, and smart TVs.

To install Pi-hole, follow the steps below:

```
tofu init
tofu plan -var-file=clusters/proxmox/dev/tofu.tfvars -var="proxmox_token_id=${PROXMOX_TOKEN_ID}" -var="proxmox_token_secret=${PROXMOX_TOKEN_SECRET}"
tofu apply --auto-approve -var-file=clusters/proxmox/dev/tofu.tfvars -var="proxmox_token_id=${PROXMOX_TOKEN_ID}" -var="proxmox_token_secret=${PROXMOX_TOKEN_SECRET}"
```
