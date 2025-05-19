resource "azurerm_service_plan" "service-plan" {
  name                = var.App_service_name
  resource_group_name = var.Rg_name
  location            = var.App_service_location
  os_type             = "Linux"
  sku_name            = "B1"
}