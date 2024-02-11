terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "devmaybe"

    workspaces {
      name = "devops-directive-terraform-course"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0905a3c97561e0b69" # Ubuntu 20.04 LTS // eu-west-1
  instance_type = "t2.micro"
}
