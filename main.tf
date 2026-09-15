provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my_server" {
  ami = "ami-06f5453d29c62393b"
  count = 2
  instance_type = "t3.micro"

  tags = {
    Name =  "opyjay-tf-server"
  }
}
