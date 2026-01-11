module "vpc" {
  source = "../../modules/vpc"

  env      = var.env
  app_name = var.app_name
  vpc_cidr = "10.0.0.0/16"
}


module "security_group" {
  source = "../../modules/security-group"

  env      = var.env
  app_name = var.app_name
  vpc_id   = module.vpc.vpc_id
}

module "ec2" {
  source = "../../modules/ec2"

  env                = var.env
  app_name           = var.app_name
  instance_type      = var.instance_type
  key_name           = var.key_name
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.security_group.sg_id]
}
