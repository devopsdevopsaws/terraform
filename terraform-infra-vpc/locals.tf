locals {
  vpc_id = module.vpc.vpc_id
  azs = module.vpc.azs
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  database_subnet_ids = module.vpc.database_subnet_ids
  natgw_id = module.vpc.natgw_id
  sg_id = module.allow_all.sg_id
  ami = data.aws_ami.ami.id
  ips = module.ec2-instance
}