variable "cdn_frontdoor_custom_domain_id" {
  type = string
  description = "custom domain id"
}
variable "cdn_frontdoor_route_ids" {
  type = list(string)
  description = "route id"
}