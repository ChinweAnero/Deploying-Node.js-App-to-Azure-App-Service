resource "azurerm_cdn_frontdoor_custom_domain" "custom_domain" {
  name                     = var.custom_domain_name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
  dns_zone_id              = var.dns_zone_id
  host_name                = "www.chinwetechhub.com"

  tls {
    certificate_type    = "ManagedCertificate"
    minimum_tls_version = "TLS12"
  }
}