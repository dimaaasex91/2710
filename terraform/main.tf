# terraform {
#   required_version = ">=1.0.0"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 3.0"
#     }
#   }
# }

provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAQFO7CBOZGYO5RHNA"
  secret_key = "/n6JHztgI4/suXvJbvEhBXIfbFZJwTXCF3hI3e5N"
}

resource "aws_instance" "example" {
  ami                    = "ami-0c55b159cbfafe1f0"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]
  user_data              = <<-EOF
    #!/bin/bash
    echo "Hello, World" > index.html
    nohup busybox httpd -f -p 8080 &
    EOF
  tags = {
    "Name" = "my_instance"
  }
}

resource "aws_security_group" "instance" {
  name = "my_instance"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}