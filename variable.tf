# AWS Config
variable "project-code" {
  description = "set your projrct name"
  default = "yohooooooooo"
}
variable "aws_region" {
  default = "ap-southeast-1"
}
variable "vpcCIDRblock" {
  type = "map"

  default = {
    staging    = "172.25.0.0/16"
    production = "172.26.0.0/16"
  }
}

variable "instanceTenancy" {
  description = ""
  default = "default"
}

variable "dnsHostNames" {
  default = true
}
variable "dnsSupport" {
  description = ""
  default = true
}