
output "vpc_id" {
  value = aws_vpc.dev
}

output "instance_id" {
  value = aws_instance.dev
}

output "eip_id" {
  value = aws_eip.pri
}
