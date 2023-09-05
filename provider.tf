# Terraform provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# AWS provider
provider "aws" {
  region = "us-east-1"
}

# Backend configure
terraform {
  backend "s3" {
    bucket = "sai-project-bucket"
    key    = "state-files"
    region = "us-east-2"
  }
}
