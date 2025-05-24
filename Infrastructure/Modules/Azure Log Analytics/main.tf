resource "azurerm_log_analytics_workspace" "Log_Analytics" {
  name                = var.log_analytics_name
  location            = var.resource_group_location
  resource_group_name = var.name_of_resource_group
  sku                 = "PerGB2018"
  retention_in_days   = 30
}