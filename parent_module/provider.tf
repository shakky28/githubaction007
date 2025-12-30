terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }

  backend "azurerm" {                       
    use_azuread_auth     = true                                    
    tenant_id            = "8511c397-31e5-4758-ac6b-099e3eadbe24"  
    storage_account_name = "stg50411"                              
    container_name       = "tfstate" 
    key                  = "task.terraform.tfstate"                              
}
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}