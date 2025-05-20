resource "azurerm_cdn_frontdoor_origin_group" "fd_origin_group" {
  name                     = var.frontdoor_origin_group_name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
  session_affinity_enabled = false
  load_balancing {
    sample_size                 = 4
    successful_samples_required = 3
  }
  health_probe {
    protocol            = "Https"
    interval_in_seconds = 30
    path                = "/"
    request_type        = "GET"
  }
}