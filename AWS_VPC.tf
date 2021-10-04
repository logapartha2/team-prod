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
  access_key = "AKIA2UWODIVGG2K22MEF"
  secret_key = "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"
}

# Create a VPC
resource "aws_vpc" "TEAM_MAIN" {
    cidr_block = "10.0.0.0/16"
    tags = {
    Name = "partha_vpc"
  }
}

