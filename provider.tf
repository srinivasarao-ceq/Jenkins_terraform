terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.8.0"
    }
  }
   backend "s3" {
    bucket = "msr-tu-jenkins"
    key    = "jenkins/terraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
   region = "eu-central-1"
}
