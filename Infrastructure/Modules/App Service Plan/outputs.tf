output "Service-plan-location" {
  value = azurerm_service_plan.service-plan.location
  description = "location of service plan"
}
output "service-plan-id" {
  value = azurerm_service_plan.service-plan.id
  description = "service plan id"
}