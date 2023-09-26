terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_integer" "priority" {
  min = 2
  max = 500
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "veklych-first-tf-bucket"

  tags = {
    Name        = "veklych-demo"
  }
}
