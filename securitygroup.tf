resource "aws_security_group" "sg" {
  name        = "sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = "aws_vpc.dev.id"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.192.0.0/16"]
  }

  egress {
   from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.192.0.0/16"]
  }

  tags = {
    Name = "allow_tls"
  }
}
