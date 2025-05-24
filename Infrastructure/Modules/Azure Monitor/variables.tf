variable "azure_monitor_name" {
  type = string
  description = "name of azure monitor diagnostics setting"
}
variable "target_resource_id" {
  type = string
  description = "the resource to monitor"
}
variable "log_analytics_workspace_id" {
  type = string
  description = "log analytics workspace to send the data"
}