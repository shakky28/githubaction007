# data "azurerm_key_vault_secret" "vm_admin_user" {
#   name         = "vm-admin-username"
#   key_vault_id = data.azurerm_key_vault.kvid.id
# }

# data "azurerm_key_vault_secret" "vm_admin_password" {
#   name         = "vm-admin-password"
#   key_vault_id = data.azurerm_key_vault.kvid.id
# }

# data "azurerm_key_vault_secret" "ssh_pub" {
#   name         = "vm-ssh-public-key"
#   key_vault_id = data.azurerm_key_vault.kvid.id
# }

# data "azurerm_network_interface" "sg_nic" {
#   name                = 
#   resource_group_name = "networking"
# }


# data "azurerm_key_vault" "kvid" {
#   name                = "sg-kv"
#   resource_group_name = "sg-rg1"
# }

