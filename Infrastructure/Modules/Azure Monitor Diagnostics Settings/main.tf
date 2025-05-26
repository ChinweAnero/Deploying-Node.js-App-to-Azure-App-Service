resource "azurerm_monitor_diagnostic_setting" "monitor" {
  name               = var.azure_monitor_name
  target_resource_id = var.target_resource_id
  log_analytics_workspace_id = var.log_analytics_workspace_id
  log_analytics_destination_type = "Dedicated"

  enabled_log {
    category_group = "allLogs"

  }
  enabled_log {
    category_group = "audit"
  }


  metric {
    category = "AllMetrics"
  }
}