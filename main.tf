terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.84.0"
    }
  }
}

module "entra" {
  source                = "./modules/entra"
  entraid_tenant_domain = var.entraid_tenant_domain
  generic_password      = var.generic_password
}
