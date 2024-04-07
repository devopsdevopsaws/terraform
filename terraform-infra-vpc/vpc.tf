module "vpc" {
    source = "../terraform-aws-vpc-advanced"
    cidr_block = var.cidr_block
    common_tags = var.common_tags
    project_name = var.project_name
    vpc_tags = var.vpc_tags
    igw_tags = var.igw_tags

    #Public subnet
    public_subnet_cidr = var.public_subnet_cidr
    #private subnet
    private_subnet_cidr = var.private_subnet_cidr
    #database subnet
    database_subnet_cidr = var.database_subnet_cidr
}

