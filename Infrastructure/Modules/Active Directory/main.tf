terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 2.44.0"
    }
  }
}
provider "azuread" {}

resource "azuread_application" "app-registration" {
  display_name = var.display_name
}

resource "azuread_service_principal" "app-service-principal" {
  client_id    = var.client_id


}
resource "azuread_application_password" "ad_password" {
  display_name           = "Sign_in_Secret"
  application_id = var.application_id

}

#Assign Contributor Role at Subscription Scope
data "azurerm_subscription" "current" {}

resource "azurerm_role_assignment" "service_principle_contributor" {
  scope                = data.azurerm_subscription.current.id
  role_definition_name = "Contributor"
  principal_id         = var.principal_id
}

#Output Credentials for GitHub Actions Secret
# output "AZURE_CREDENTIALS_JSON" {
#   value = jsonencode({
#     clientId       = azuread_application.github_app.application_id
#     clientSecret   = azuread_application_password.github_sp_password.value
#     subscriptionId = data.azurerm_subscription.current.subscription_id
#     tenantId       = data.azurerm_subscription.current.tenant_id
#   })
#   sensitive = true
# }
