terraform {
  backend "s3" {
    region = "us-west-2"
    bucket = "fadi-terraform-state-2025"
    key = "tfstate"
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = var.InstanceType

  tags = {
    Name = var.instance_name
  }
}