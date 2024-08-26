variable "billing_threshold" {
  description = "The billing threshold in USD"
  type        = number
  default     = 10.0
}

variable "notification_email" {
  description = "The email address to receive billing alerts"
  type        = string
  default     = "jayantgulati5@gmail.com"  # Replace with your email
}

variable "cloudtrail_name" {}
variable "cloudtrail_s3bucket" {}
variable "config_role" {}
variable "config_role_policy" {}
variable "config_recorder" {}
variable "config_delivery_channel" {}
variable "config-s3-bucket" {}
variable "finding_publishing_frequency" {}
variable "status" {}
variable "mfa_enabled" {}
variable "config_rule_tag" {}
variable "main_region" {}
variable "alias" {}
variable "alias_region" {}