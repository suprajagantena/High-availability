resource "aws_route_table_association" "a" {
  subnet_id      = "aws_subnet.pub.id"
  route_table_id = "aws_route_table.pub.id"
}
resource "aws_route_table" "r" {
  vpc_id = aws_vpc.dev.id

  route {
  cidr_block = "10.192.0.0/16"
   gateway_id = "aws_internet_gateway.gw.id" 
    }


  tags = {
    Name = "main"
  }
}
