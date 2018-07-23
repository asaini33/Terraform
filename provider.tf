//This file will create a VPC with a subnet

provider "aws" {
  access_key = "AKIAI5AFPIMTBWSGRF6A"
  secret_key = "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"
  region     =  "us-east-1"
}
resource "aws_vpc" "first_vpc_terraform" {
  cidr_block =  "192.168.0.0/16"
  instance_tenancy = "default"

  tags {
  Name = "Main"
  Location = "Toronto"
  }
}

resource "aws_subnet" "Public_subnet" {
  vpc_id = "${aws_vpc.first_vpc_terraform.id}"
  cidr_block = "192.168.1.0/24"

  tags {
  Name = "Public"
  Location = "downtown"
  }
}
