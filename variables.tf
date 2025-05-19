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
# variable "application_id" {
#   type = string
#   #default = module.service_principal.application_id
#   default = ""
# }
# variable "client_id" {
#   type = string
#   #default = module.service_principal.client_id_output
#   default = ""
# }
# variable "display_name" {
#   type = string
#   default = "ServicePrincipal"
# }
# variable "principal_id" {
#   type = string
#   #default = module.service_principal.principal_id_service_principal_id
#   default = ""
# }