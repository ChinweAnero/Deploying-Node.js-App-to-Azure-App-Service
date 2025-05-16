resource "azurerm_resource_group" "app-service-resource-group" {
  name     = var.app-service-resource-group-name
  location = var.resource-group-location
}