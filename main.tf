terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.29.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
   features {}
   subscription_id = "9c86af6c-12b5-4c7e-bdfa-cd5a99dddb0f"
   use_cli = true

}

#resource group module
module "resource_group" {
  source = "./Infrastructure/Modules/Resource Group"
  app-service-resource-group-name = var.Resource_group_name
  resource-group-location = var.resource-group-location
}

#App service plan
module "app_service_plan" {
  source = "./Infrastructure/Modules/App Service Plan"
  App_service_name = "${var.environment}-App-service-plan"
  Rg_name = module.resource_group.resource_group_name
  App_service_location = var.App_service_location
}

#App service
module "app_service" {
  source = "./Infrastructure/Modules/App Service"
  name                = "${var.environment}-app-service-chinwe"
  resource_group_name = module.resource_group.resource_group_name
  service_plan_id     = module.app_service_plan.service-plan-id
  Service_plan_location = module.app_service_plan.Service-plan-location
}