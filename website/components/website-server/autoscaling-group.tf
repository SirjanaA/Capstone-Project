module "asg" {
  source = "./modules/autoscaling-group"
  #   image_id            = "ami-0e449927258d45bc4"
  region              = var.region
  instance_type       = "t2.micro"
  allow_http_id       = module.sg.allow_http_id
  allow_ssh_id        = module.sg.allow_ssh_id
  add_public_ip       = true
  startup_script      = "capstone.sh"
  instance_count_max  = 3
  instance_count_min  = 1
  subnet_a_id         = module.vpc.subnet_a_id
  subnet_b_id         = module.vpc.subnet_b_id
  load_balancer_id    = module.alb.load_balancer_id
  lb_target_group_arn = module.alb.target_group_arn

}