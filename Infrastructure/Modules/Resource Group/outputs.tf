output "resource_group_name" {
  value = azurerm_resource_group.app-service-resource-group.name
  description = "outputs resource group name"
}
output "resource_group_id" {
  value = azurerm_resource_group.app-service-resource-group.id
}
output "resource_group_location" {
  value = azurerm_resource_group.app-service-resource-group.location
}