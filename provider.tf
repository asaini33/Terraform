//This file will create a VPC with a subnet

provider "aws" {
  access_key = ""
  secret_key = ""
  region     =  "us-east-2"
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
