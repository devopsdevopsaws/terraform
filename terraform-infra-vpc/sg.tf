module "allow_all" {
    source = "../terraform-aws-sg"
    project_name = var.project_name
    sg_name = var.sg_name
    sg_description = var.sg_description
    vpc_id = local.vpc_id
    sg_ingress_rules = var.sg_ingress_rules
    common_tags = var.common_tags
}