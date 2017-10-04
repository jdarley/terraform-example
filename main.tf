provider "aws" {
  region = "eu-west-1"
  shared_credentials_file = "${pathexpand("~/.aws/credentials")}"
  profile                 = "personal"
}

resource "aws_instance" "example" {
  ami           = "ami-785db401"
  instance_type = "t2.micro"

  tags {
    Name = "terraform-example"
  }
}
