resource "aws_instance" "dev" {
  ami           = "data.aws_ami.Linux.id"
  instance_type = "t2.micro"
  variable "az_number" {
  default = {
    a = 1
    b = 2
    c = 3
    d = 4
    e = 5
    f = 6
  }
}

  tags = {
    Name = "HelloWorld"
  }
}
