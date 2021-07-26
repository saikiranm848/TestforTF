provider "aws" {
  region = var.region
}

resource "aws_instance" "app_server" {
  ami           = "ami-0dc2d3e4c0f9ebd18"
  instance_type = "t2.micro"
  count = var.vm_count
  tags = {
    Name = "TestforTF"
  }
