resource "azurerm_cdn_frontdoor_profile" "frontdoor_profile" {
  name                = var.frontdoor_profile_name
  resource_group_name = var.resource_group_name
  sku_name            = "Standard_AzureFrontDoor"

  tags = {
    environment = "prod"
  }
}




