resource "azurerm_cdn_frontdoor_route" "frontdoor_route" {
  name                          = var.route_name
  cdn_frontdoor_endpoint_id     = var.cdn_frontdoor_endpoint_id
  cdn_frontdoor_origin_group_id = var.cdn_frontdoor_origin_group_id
  cdn_frontdoor_origin_ids      = var.cdn_frontdoor_origin_ids
  cdn_frontdoor_rule_set_ids    = var.cdn_frontdoor_rule_set_ids
  enabled                       = true

  forwarding_protocol    = "MatchRequest"
  https_redirect_enabled = false
  patterns_to_match      = ["/*"]
  supported_protocols    = ["Http", "Https"]

  cdn_frontdoor_custom_domain_ids = var.cdn_frontdoor_custom_domain_ids
  link_to_default_domain          = false


}