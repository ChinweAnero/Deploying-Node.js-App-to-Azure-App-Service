variable "custom_domain_name" {
  type = string
  description = "custom domain"
}
variable "cdn_frontdoor_profile_id" {
  type = string
  description = "id of front door profile"
}
variable "dns_zone_id" {
  type = string
  description = "id of the dns zone"
}