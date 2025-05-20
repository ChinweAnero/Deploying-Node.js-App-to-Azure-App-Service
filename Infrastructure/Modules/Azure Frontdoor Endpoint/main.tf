resource "azurerm_cdn_frontdoor_endpoint" "frontdoor_endpoint" {
  name                     = var.frontdoor_endpoint_name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
  enabled = true
  timeouts = 30

  tags = {
    ENV = "prod"
  }
}