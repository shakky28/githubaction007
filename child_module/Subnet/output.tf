output "subnet_ids" {
  value = {
    for k, s in azurerm_subnet.sg_subnet :
    k => s.id
  }
}