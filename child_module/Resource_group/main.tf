
resource "azurerm_resource_group" "sg_rg" {
  for_each = var.rgs
  name     = each.value.rg_name
  location = each.value.rg_location
}