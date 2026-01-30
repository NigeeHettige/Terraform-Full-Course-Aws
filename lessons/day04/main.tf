terraform {


  backend "s3" {
    bucket = "tutorial-terraform-backend-us-state"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#create s3 bucket

resource "aws_s3_bucket" "nigee-first-bucket-2026-01" {
  bucket = "nigee-first-bucket-2026-01-29"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

