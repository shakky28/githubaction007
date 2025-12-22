terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }

#   backend "azurerm" {
#     use_cli              = true                                    
#     use_azuread_auth     = true                                    
#     tenant_id            = "8511c397-31e5-4758-ac6b-099e3eadbe24"  
#     storage_account_name = "stg5041"                              
#     container_name       = "tfstate" 
#     key                  = "task.terraform.tfstate"                              
# }
}

provider "azurerm" {
  features {}
  subscription_id = "722e98bb-a107-4d7c-8537-ba8c2f35547f"
}