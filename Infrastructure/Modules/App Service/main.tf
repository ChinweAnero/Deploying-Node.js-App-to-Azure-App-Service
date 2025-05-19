
resource "azurerm_linux_web_app" "app" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.Service_plan_location
  service_plan_id     = var.service_plan_id

  site_config {
    always_on = false
  }
}