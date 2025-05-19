output "client_id_output" {
  value = azuread_application.app-registration.client_id
  description = "app client id output"
  sensitive = true
}

output "application_id" {
  value = azuread_application.app-registration.id
  description = "app id output"
}

output "password_application_id" {
  value = azuread_application_password.ad_password.application_id
  sensitive = true
}
output "clientSecret" {
  value = azuread_application_password.ad_password.value
  sensitive = true
}
output "subscriptionId" {
  value = data.azurerm_subscription.current.subscription_id
  sensitive = true
}
output "tenantId" {
  value = data.azurerm_subscription.current.tenant_id
  sensitive = true
}
output "principal_id_service_principal_id" {
  value = azuread_service_principal.Service_principal.id
}