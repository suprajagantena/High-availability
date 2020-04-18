resource "aws_subnet" "public" {
  vpc_id     = "aws_vpc.dev.id"
  cidr_block = "10.0.1.0/16"
  all_availability_zones = true
  tags = {
    Name = "devpubsub"
  }
}
resource "aws_subnet" "private1" {
  vpc_id     = "aws_vpc.dev.id"
  cidr_block = "10.0.2.0/16"

  tags = {
    Name = "devprisub"
  }
}
