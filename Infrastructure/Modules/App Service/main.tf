
resource "azurerm_linux_web_app" "app" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.Service_plan_location
  service_plan_id     = var.service_plan_id
  https_only = true

  site_config {
    always_on = true
    ip_restriction {
      name = "AllowAzureFrontdoorTraffic"
      action = "Allow"
      priority = 100
      service_tag = "AzureFrontDoor.Backend"
      headers {
        x_azure_fdid = []
      }

    }
    ip_restriction {
      name = "DenyOtherTraffic"
      priority = 200
      action = "Deny"
      ip_address = "0.0.0.0/0"

    }

  }

}
