resource "aws_security_group" "sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "aws_vpc.dev.id"

  ingress {
    description = "TLS from VPC"
    ports   = 443
    protocol    = "tcp"
    cidr_blocks = ["aws_vpc.main.cidr_block"]
  }

  egress {
    ports   = 443
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
