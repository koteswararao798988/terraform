# update the terraform
# my provider aws

provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAX4NLJCBA3LM4RC4E"
  secret_key = "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"
}

# creating vpc in terraform
resource "aws_vpc" "demovpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    NAME = "demo-VPC"
  }
}
