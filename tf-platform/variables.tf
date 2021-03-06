variable "admin_user_object_id" {
  type = string
}

variable "management_group_prefix" {
  type    = string
  default = "ES"
}

variable "mgmt_subscription_id" {
  type = string
}

variable "connectivity_subscription_id" {
  type = string
}

variable "default_location" {
  type    = string
  default = "westeurope"
}

variable "log_analytics_rg_name" {
  type    = string
  default = "ES-mgmt"
}

variable "vwan_rg_name" {
  type    = string
  default = "ES-vwan"
}

variable "vwan_name" {
  type    = string
  default = "ES-global-vwan"
}