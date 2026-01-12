module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  availability_zone  = "us-east-1a"
  vpc_name           = "dev-vpc"
}

module "security_group" {
  source = "../../modules/security_group"

  vpc_id = module.vpc.vpc_id
  sg_name = "dev-web-sg"
}

module "ec2" {
  source = "../../modules/ec2"

  instance_type      = "t3.micro"
  key_name           = "Devops_key"          
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.security_group.security_group_id]
  instance_name      = "dev-web-server"
}
