resource "aws_vpc" "dev" {
  cidr_block       = "172.0.1.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "Dev"
  }
}
