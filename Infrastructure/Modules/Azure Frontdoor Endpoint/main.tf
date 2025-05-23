resource "azurerm_cdn_frontdoor_endpoint" "frontdoor_endpoint" {
  name                     = var.frontdoor_endpoint_name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
  enabled = true
  depends_on = []
  timeouts  {
    create = "30s"
    read = "5s"
    update = "30s"
    delete = "30s"


  }

  tags = {
    ENV = "prod"
  }
}