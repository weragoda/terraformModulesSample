module "vpc" {
  source            =  "aws-vpc"
  cidr-block           = "${lookup(var.vpcCIDRblock, terraform.workspace)}"
  instance-tenancy     = "${var.instanceTenancy}"
  enable-dns-support   = "${var.dnsSupport}"
  enable-dns-hostnames = "${var.dnsHostNames}"

  name        = "${var.project-code}-${terraform.workspace}-vpc"
  environment = "${terraform.workspace}"
  project     = "${var.project-code}"
}