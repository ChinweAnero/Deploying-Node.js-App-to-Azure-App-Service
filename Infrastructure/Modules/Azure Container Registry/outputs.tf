output "Container_registry_name" {
  value = azurerm_container_registry.Registry.name
  description = "registry name"
}
output "Container_registry_id" {
  value = azurerm_container_registry.Registry.id
}