data "aws_ami" "Linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Linux/images/hvm-ssd/Linux-trusty-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = [""] # Canonical
}

resource "aws_launch_configuration" "as_conf" {
  name_prefix   = "terraform-lc-example-"
  image_id      = "data.aws_ami.Linux.id"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "bar" {
  name                 = "terraform-asg-example"
  launch_configuration = "aws_launch_configuration.as_conf.name"
  min_size             = 2
  max_size             = 2

  lifecycle {
    create_before_destroy = true
  }
}
