variable "rgs" {}
variable "stgs" {}
variable "vnets" {}
variable "subnets" {}
variable "vms" {}
variable "public_ips" {}
variable "nsgs" {}
variable "nics" {}
variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "client_id" {
  description = "Azure Service Principal Client ID"
  type        = string
}

variable "client_secret" {
  description = "Azure Service Principal Client Secret"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

# variable "lbs" {}
# variable "kv" {}
# variable "dbservers" {}
# variable "databases" {}
