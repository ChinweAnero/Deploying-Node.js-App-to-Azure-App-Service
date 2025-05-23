output "ns_records" {
  value = azurerm_dns_zone.dns_zone.name_servers
}
output "dns_zone_id" {
  value = azurerm_dns_zone.dns_zone.id
}