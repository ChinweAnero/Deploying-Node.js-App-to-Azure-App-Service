output "app_service_default_hostname" {
  value = azurerm_linux_web_app.app.default_hostname

}
output "web_app_id" {
  value = azurerm_linux_web_app.app.id
}