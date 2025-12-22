variable "vms" {
  type = map(object({
    rg_name   = string
    rg_location  = string
    nic_key   = string

  }))
}

variable "nic_ids" {
  type = map(string)
}
