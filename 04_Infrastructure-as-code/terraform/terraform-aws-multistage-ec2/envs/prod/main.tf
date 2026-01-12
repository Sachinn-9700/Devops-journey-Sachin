module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
  vpc_name           = var.vpc_name
}

module "security_group" {
  source = "../../modules/security_group"

  vpc_id = module.vpc.vpc_id
  sg_name = var.sg_name
}

module "ec2" {
  source = "../../modules/ec2"

  instance_type      = var.instance_type
  key_name           = var.key_name
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.security_group.security_group_id]
  instance_name      = var.instance_name
}
