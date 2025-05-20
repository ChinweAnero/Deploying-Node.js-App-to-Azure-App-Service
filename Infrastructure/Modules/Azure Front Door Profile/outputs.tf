output "cdn_frontdoor_profile_id" {
  value = azurerm_cdn_frontdoor_profile.frontdoor_profile.id
  description = "The public IP address of the EC2 instance"
}
