resource "aws_eip" "nat" {
  instance = "${aws_instance.pri.id}"
   vpc      = true
}
