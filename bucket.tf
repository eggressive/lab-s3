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
  access_key = "AKIATO7UJZDNCGOLUOMT"
  secret_key = "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"
}

resource "aws_s3_bucket" "b" {
  bucket = "confluences3bucket"

  tags = {
    Name        = "confluences3bucketnew"
    Environment = "Dev"
  }
}
