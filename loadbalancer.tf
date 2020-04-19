resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups   = ["aws_security_group.sg.id"]
  subnets            = ["aws_subnet.public.id"]

  enable_deletion_protection = true

  access_logs {
    bucket  = "aws_s3_bucket.lb_logs.bucket"
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "dev"
  }
}

resource "aws_lb_target_group" "test" {
  name     = "tf-example-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "${aws_vpc.dev.id}"
}

