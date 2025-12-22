variable "nics" {
  type = map(object({
    nic_name    = string
    rg_name     = string
    rg_location = string
    subnet_key = string
  }))
}

variable "subnet_ids" {
  type = map(string)
}
