resource "aws_lb" "wzops-alb" {
  name               = "wzops-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [aws_subnet.wzops-pub-1.id, aws_subnet.wzops-pub-2.id, aws_subnet.wzops-pub-3.id]
  tags = {
    Name = "wzops-alb"
  }
}

resource "aws_lb_target_group" "wzops-tg" {
  name     = "wzops-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.wzops.id
  target_type = "instance"
}

resource "aws_lb_listener" "wzops-listener" {
  load_balancer_arn = aws_lb.wzops-alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.wzops-tg.arn
  }
}

resource "aws_lb_target_group_attachment" "web_attachment" {
  target_group_arn = aws_lb_target_group.wzops-tg.arn
  target_id        = aws_instance.web.id
  port             = 80
}
