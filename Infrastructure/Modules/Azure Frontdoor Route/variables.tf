variable "route_name" {
  type = string
  description = "name of frontdoor route"
}
variable "cdn_frontdoor_endpoint_id" {
  type = string
  description = "frontdoor endpoint id"
}
variable "cdn_frontdoor_origin_group_id" {
  type = string
  description = "origin group id"
}
variable "cdn_frontdoor_origin_ids" {
  type = list(string)
  description = "origin ids"
}
variable "cdn_frontdoor_rule_set_ids" {
  type = set(string)
  description = "rule set ids"
}
variable "cdn_frontdoor_custom_domain_ids" {
  type = list(string)
  description = "custom domains to route to"
}