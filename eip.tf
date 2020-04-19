resource "aws_eip" "nat" {
  instance = "aws_instance.dev.id"
   vpc      = true
}
