proxmox_host      = "https://192.168.0.131:8006/api2/json"
target_node       = "proxmox"
storage           = "Kingstone-data"
full_clone        = true
template_name     = "ubuntu-server-stable"
network_bridge    = "vmbr0"
memory            = 2048
name              = "test-two"