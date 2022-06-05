terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

locals {
    ami = "ami-09d56f8956ab235b3"
    instance_type = "t2.micro"
    name = "demo-lab1-local"
}

resource "aws_instance" "myapp" {
    ami = local.ami
    instance_type = local.instance_type
    tags = {
        Name = local.name
    }
}
