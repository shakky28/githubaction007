# variable "stgs" {}
# variable "rg_name" {}
# variable "rg_location" {}
variable "stgs" {
  type = map(object({
    rg_name     = string
    rg_location = string
    stg_name    = string
  }))
}

