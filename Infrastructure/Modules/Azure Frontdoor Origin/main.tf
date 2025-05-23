resource "azurerm_cdn_frontdoor_origin" "frontdoor_origin" {
  name                          = var.frontdoor_origin_name
  cdn_frontdoor_origin_group_id = var.frontdoor_origin_group_id
  enabled                       = true

  certificate_name_check_enabled = true

  host_name          = var.host_name
  http_port          = 80
  https_port         = 443
  origin_host_header = var.origin_host_header
  priority           = 1
  weight             = 1000
}