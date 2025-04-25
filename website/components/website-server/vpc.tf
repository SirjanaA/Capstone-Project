# Create a VPC
module "vpc" {
  source        = "./modules/vpc"
  vpc_cidr      = var.vpc_cidr
  project       = var.project
  subnet_a_cidr = var.subnet_a_cidr
  subnet_b_cidr = var.subnet_b_cidr
  region        = var.region
}