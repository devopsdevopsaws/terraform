module "test_module" {
  source = "git::https://github.com/devopsdevopsaws/terraform-aws-vpc-advanced.git"
  cidr_block = var.cidr_block
  common_tags = var.common_tags
  project_name = var.project_name
  vpc_tags = var.vpc_tags
  igw_tags = var.igw_tags
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  database_subnet_cidr = var.database_subnet_cidr
  #natgw_tags = var.natgw_tags
}