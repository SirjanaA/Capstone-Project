module "sg" {
  source  = "./modules/sec-groups"
  vpc_id  = module.vpc.vpc_id
  project = var.project


}