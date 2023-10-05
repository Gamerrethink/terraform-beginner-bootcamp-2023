variable "terratowns_endpoint" {
  type        = string
}

variable "terratowns_access_token" {
  type        = string
}

variable "teacherseat_user_uuid" {
 type = string
}

#variable "bucket_name" {
#  type        = string
#}

variable "Quake2" {
  type = object({
    public_path = string
    content_version = number
  })
}

variable "DOOM1993" {
  type = object({
    public_path = string
    content_version = number
  })
}

#variable "content_version" {
#  type = number
#}