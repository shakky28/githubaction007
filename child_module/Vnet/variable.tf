variable "vnets" {
  type = map(object({
    rg_name     = string
    rg_location = string
    vnet_name   = string
    address_space = list(string)
  }))
}
