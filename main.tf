#This Terraform Code Deploys Basic VPC Infra.
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}


terraform {
  required_providers {
      aws = {
      version = "<3.25.0"
      source = "hashicorp/aws"
    }
}
}


terraform {
  backend "s3" {
    bucket = "shiva.terraform"
    key    = "myterraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}




