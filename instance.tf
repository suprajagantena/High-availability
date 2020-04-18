resource "aws_instance" "dev" {
  ami           = "data.aws_ami.Linux.id"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
