# VPC 

resource "aws_vpc" "vpc" {
  cidr_block            = "172.16.0.0/16"
  instance_tenancy      = "default"
  enable_dns_support    = true
  enable_dns_hostnames  = true
  enable_classiclink    = false

  tags = var.tags
}