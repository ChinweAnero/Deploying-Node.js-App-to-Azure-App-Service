variable "frontdoor_origin_name" {
  type = string
  description = "name of the front door origin"
}
variable "host_name" {
  type = string
  description = "host name (apps service)"
}
variable "origin_host_header" {
  type = string
  description = "host header(app service)"
}
variable "cdn_frontdoor_profile_id" {
  type = string
  description = "id of the frontdoor profile"
}
