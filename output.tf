data "aws_instance" "dev" {
  instance_id = "aws_instance.dev.id"
  }
 data "aws_vpc" "dev" {
  id = "aws_vpc.dev.id"
}
