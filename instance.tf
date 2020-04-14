data "aws_instance" "pri" {
  instance_id = "i-instanceid"

  filter {
    name   = "image-id"
    values = ["ami-ami-0323c3dd2da7fb37d"]
    #availability_zone = "us-east-1a"
    security_group = "aws_security_group.allow_tls.id" 
    subnet_id = "aws_subnet.private.id"
  }

  filter {
    name   = "tag:Name"
    values = ["instance-name-tag"]
  }
}
