variable "environment" {
  default = "prod"
}

variable "Resource_group_name" {
  type = string
  default = "App-Service-Rg"
  description = "Name of resource group"
}
variable "resource-group-location" {
  type = string
  default = "West Europe"
  description = "resource group location"
}
variable "App_service_location" {
  type = string
  default = "West Europe"
}