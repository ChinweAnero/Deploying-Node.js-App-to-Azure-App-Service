
output "frontdoor_endpoint_id" {
  value = azurerm_cdn_frontdoor_endpoint.frontdoor_endpoint.id
}
output "frontdoor_endpoint_name" {
  value = azurerm_cdn_frontdoor_endpoint.frontdoor_endpoint.name
}
output "frontdoor_endpoint" {
  value = azurerm_cdn_frontdoor_endpoint.frontdoor_endpoint.host_name
}