terraform {
  required_version = "~> 1.3"

  backend "s3" {
    bucket         = "prfinaljorge" 
    key            = "backend/terraform.tfstate" #donde se guarde el tfstate
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "tbprfinaljorge" # tabla creada en AWS https://us-east-1.console.aws.amazon.com/dynamodbv2/home?region=us-east-1#table?name=tbprfinaljorge&tab=overview
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "prfinaljorge"
  acl    = "private"

  tags = {
    Name        = "prfinaljorge"
    Environment = "Producción"
  }
}
