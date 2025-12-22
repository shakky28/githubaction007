resource "azurerm_virtual_network" "sg_vnet" {
  for_each = var.vnets
  name                = each.value.vnet_name
  location            = each.value.rg_location
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space
  # dns_servers         = ["10.0.0.4", "10.0.0.5"]

  
}