resource "azurerm_linux_virtual_machine" "sg_vm" {
  for_each            = var.vms
  name                = each.value.vm_name
  resource_group_name = each.value.rg_name
  location            = each.value.rg_location
  size                = "Standard_D2ls_v5"
  admin_username      = "aadimanav"
  admin_password      = "aadimanav@123456"
  network_interface_ids           = [var.nic_ids[each.value.nic_key ] ]
  disable_password_authentication = false

  # admin_ssh_key {
  #   username   = data.azurerm_key_vault_secret.vm_admin_user.value
  #   public_key = data.azurerm_key_vault_secret.ssh_pub.value
  # }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
