variable "public_ip" {
    type = map(object({
      public_ip_name = string
      rg_location = string
      rg_name = string 
    }))
}
