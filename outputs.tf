# output "application_id" {
#   value = module.service_principal.application_id
#   description = "app id output"
# }
# output "application_client_id" {
#   value = module.service_principal.client_id_output
#   description = "app client id output"
#   sensitive = true
# }
# output "password_application_id" {
#   value = module.service_principal.password_application_id
#   sensitive = true
# }
# output "clientSecret" {
#   value = module.service_principal.clientSecret
#   sensitive = true
# }
# output "subscriptionId" {
#   value = data.azurerm_subscription.current.id
#   sensitive = true
# }
# output "tenantId" {
#   value = data.azurerm_subscription.current.tenant_id
#   sensitive = true
# }