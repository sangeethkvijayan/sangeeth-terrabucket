terraform {

  required_version = ">= 1.11.0"
 
  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 6.0"

    }

  }
 
  backend "s3" {

    bucket       = "sangeeth-terra-bucket "

    key          = "dev/terraform.tfstate"

    region       = "eu-north-1"

    use_lockfile = true

  }

}
 
provider "aws" {

  region = var.aws_region

}
 
