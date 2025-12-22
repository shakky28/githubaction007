output "nic_ids" {
  value = {
    for k, nic in azurerm_network_interface.sg_nic :
    k => nic.id
  }
}

