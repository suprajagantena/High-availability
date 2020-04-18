resource "aws_instance" "dev" {
  ami           = "data.aws_ami.Linux.id"
  instance_type = "t2.micro"
  variable "region_number" {
  default = {
    us-east-1      = 1
    us-west-1      = 2
    }
    }

  tags = {
    Name = "HelloWorld"
  }
}
