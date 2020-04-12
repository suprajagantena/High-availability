resource "aws_launch_configuration" "as_conf" {
  name          = "web_config"
  image_id      = "${data.aws_ami.Linux.id}"
  instance_type = "t2.micro"
}
