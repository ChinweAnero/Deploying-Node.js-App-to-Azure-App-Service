resource "azurerm_cdn_frontdoor_custom_domain_association" "example" {
  cdn_frontdoor_custom_domain_id = var.cdn_frontdoor_custom_domain_id
  cdn_frontdoor_route_ids        = var.cdn_frontdoor_route_ids
}