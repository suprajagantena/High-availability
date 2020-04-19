resource "aws_vpc" "dev" {
  cidr_block       = "10.192.0.0/24"
  instance_tenancy = "dedicated"

  tags = {
    Name = "Dev"
  }
}
