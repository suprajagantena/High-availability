data "aws_instance" "dev" {
  instance_id = "aws_instance.dev.id"
  }
 data "aws_vpc" "aws_vpc.dev.id" {
  id = "var.vpc_id"
}
