terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = ">= 1.0"
}

provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_s3_bucket" "b" {
  bucket = "confluences3bucket"

  tags = {
    Name        = "confluences3bucketnew"
    Environment = "Dev"
  }
}
