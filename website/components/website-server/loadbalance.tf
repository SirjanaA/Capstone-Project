module "alb" {
  source            = "./modules/load-balancer"
  project           = var.project
  subnet_alb        = data.aws_subnets.subnets.ids
  allow_alb_http_id = data.aws_security_group.allow-http.id
  vpc_id            = module.vpc.vpc_id
}

