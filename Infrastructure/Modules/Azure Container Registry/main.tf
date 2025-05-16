resource "azurerm_container_registry" "Registry" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location_of_resource_group
  sku                 = "Standard"
  admin_enabled       = false

}