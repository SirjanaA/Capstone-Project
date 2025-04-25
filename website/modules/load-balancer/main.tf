resource "aws_lb" "alb" {
  name = "${var.project}-alb"
  load_balancer_type = "application"
  security_groups = [var.allow_alb_http_id]
  subnets = var.subnet_alb
  enable_cross_zone_load_balancing = true
  enable_deletion_protection       = true
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.alb.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.alb.arn
    
  } 
}

resource "aws_lb_target_group" "alb" {
  name     = "my-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30

  }
}