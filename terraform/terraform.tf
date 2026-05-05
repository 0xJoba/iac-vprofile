terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.25.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
 
  backend "s3" {
    bucket = "vprofile-tfstate-joba-2026-904690835815-us-east-2-an"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
 
  required_version = ">= 1.6.0"
}
 
provider "aws" {
  region = var.region
}

