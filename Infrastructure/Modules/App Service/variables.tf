variable "name" {
  type = string
  description = "name of app service"
}
variable "resource_group_name" {
  type = string
  description = "name of resource group"
}
variable "Service_plan_location" {
  type = string
  description = " location  of app service"
}
variable "service_plan_id" {
  type = string
  description = "id of service plan"
}