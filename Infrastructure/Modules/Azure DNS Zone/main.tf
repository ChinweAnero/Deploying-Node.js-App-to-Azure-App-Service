resource "azurerm_dns_zone" "dns_zone" {
  name                = "chinwetechhub.com"
  resource_group_name = var.resource_group_name
}