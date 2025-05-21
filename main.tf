terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.29.0"
    }
     azuread = {
      source = "hashicorp/azuread"
      version = "3.4.0"
    }
  }
}
provider "azuread" {}

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
  App_service_name = "${var.environment}-app-service-plan"
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

#Containeer Registry
module "Container_Registry" {
  source = "./Infrastructure/Modules/Azure Container Registry"
  location_of_resource_group = module.resource_group.resource_group_location
  name = "${var.environment}containerregistrychinwe"
  resource_group_name = module.resource_group.resource_group_name
}

# Azure Front Door Profile Profile
module "front_door_profile" {
  source = "./Infrastructure/Modules/Azure Front Door Profile"
  frontdoor_profile_name   = "${var.environment}FrontdoorProfile"
  resource_group_name      = module.resource_group.resource_group_name
}
#Azure front door endpoint
module "Frontdoor_endpoint" {
  source = "./Infrastructure/Modules/Azure Frontdoor Endpoint"
  cdn_frontdoor_profile_id = module.front_door_profile.cdn_frontdoor_profile_id
  frontdoor_endpoint_name = "${var.environment}FrontdoorEndpoint"
}

#frontdoor origin group
module "frontdoor_origin_group" {
  source = "./Infrastructure/Modules/Azure Frontdoor Origin Group"
  cdn_frontdoor_profile_id = module.front_door_profile.cdn_frontdoor_profile_id
  frontdoor_origin_group_name = "${var.environment}FrontdoorOriginGroup"
}


#Azure frontdoor origin
module "frontdoor_origin" {
  source = "./Infrastructure/Modules/Azure Frontdoor Origin"
  frontdoor_origin_name = "${var.environment}FrontdoorOrigin"
  host_name = module.app_service.app_service_default_hostname
  origin_host_header = module.app_service.app_service_default_hostname
  frontdoor_origin_group_id = module.frontdoor_origin_group.cdn_frontdoor_origin_group_id
}
#Azure frontdoor ruleset
module "frontdoor_rule_set" {
  source = "./Infrastructure/Modules/Azure Frontdoor Rule Set"
  cdn_frontdoor_profile_id = module.front_door_profile.cdn_frontdoor_profile_id
  frontdoor_rule_set_name  = "${var.environment}FrontdoorRuleSet"
}

#Azure frontdoor Route
module "frontdoor_route" {
  source = "./Infrastructure/Modules/Azure Frontdoor Route"
  cdn_frontdoor_endpoint_id = module.Frontdoor_endpoint.frontdoor_endpoint_id
  cdn_frontdoor_origin_group_id = module.frontdoor_origin_group.cdn_frontdoor_origin_group_id
  cdn_frontdoor_origin_ids = [module.frontdoor_origin.frontdoor_origin_id]
  cdn_frontdoor_rule_set_ids = [module.frontdoor_rule_set.cdn_frontdoor_rule_set_ids]
  route_name = "${var.environment}FrontdoorRoute"
}