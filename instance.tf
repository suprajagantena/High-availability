data "aws_instance" "foo" {
  instance_id = "i-instanceid"

  filter {
    name   = "image-id"
    values = ["ami-ami-0323c3dd2da7fb37d"]
    availability_zone = "us-east-1a"
    security_group = "${}" 
    subnet_id = "${aws_subnet.public.id}"
  }

  filter {
    name   = "tag:Name"
    values = ["instance-name-tag"]
  }
}
