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
    bucket = "terraformstate.file"
    key    = "myterraform.tfstate"
    region = "us-east-1"
  }
}



resource "aws_s3_bucket" "bucket1" {
  bucket = "my-terraform.tfstatebucket1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket" "bucket2" {
  bucket = "my-terraform.tfstatebucket2"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



