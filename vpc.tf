resource "aws_vpc" "main" {
  cidr_block           = "10.210.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "atlantis-test"
    Description = "Managed by Terraform"
  }
}