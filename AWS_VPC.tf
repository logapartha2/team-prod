terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  #access_key = ""
  #secret_key = ""
}

# Create a VPC
resource "aws_vpc" "MAIN" {
    cidr_block = "10.0.0.0/16"
    tags = {
    Name = "partha_vpc"
  }
}

