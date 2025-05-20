resource "azurerm_cdn_frontdoor_rule_set" "frontdoor_rule_set" {
  name                     = var.frontdoor_rule_set_name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
}