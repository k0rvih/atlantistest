provider "aws" {
  region     = us-west-2
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

data "aws_vpc" "default" {
  id = "vpc-0bc171aab9a93a315"
}

data "aws_subnet_ids" "public" {
  vpc_id = data.aws_vpc.default.id

  tags = {
    SubnetType = "public"
  }
}