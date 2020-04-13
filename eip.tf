resource "aws_eip" "lb" {
  instance = "${aws_instance.pri.id}"
   vpc      = true
}
