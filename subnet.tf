resource "aws_subnet" "public" {
  vpc_id     = "aws_vpc.dev.id"
  cidr_block = "10.192.1.0/24"
  tags = {
    Name = "devpubsub"
  }
}
resource "aws_subnet" "private1" {
  vpc_id     = "aws_vpc.dev.id"
  cidr_block = "10.192.2.0/32"

  tags = {
    Name = "devprisub"
  }
}
