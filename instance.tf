resource "aws_instance" "dev" {
  ami           = "data.aws_ami.Linux.id"
  instance_type = "t2.micro"
  available_zone = data.available_zones[0,1]

  tags = {
    Name = "HelloWorld"
  }
}
