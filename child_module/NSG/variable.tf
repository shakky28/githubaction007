variable "nsgs" {
    type = map(object({
      nsg_name = string
      rg_name = string 
      rg_location = string
    }))
}
