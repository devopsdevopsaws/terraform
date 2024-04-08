module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  for_each = var.instances  
  ami = local.ami
  instance_type = each.value
  subnet_id = each.key == "Web" ? local.public_subnet_ids[0] : local.private_subnet_ids[0]
  vpc_security_group_ids = [local.sg_id]
  tags = merge(
    {
        Name = each.key
    },
    var.common_tags
  )
}

module "ec2_ansible" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami = local.ami
  instance_type = "t2.micro"
  vpc_security_group_ids = [local.sg_id]
  subnet_id = local.public_subnet_ids[0] # public subnet in 1a az
  user_data = file("roboshop-ansible.sh")
  tags = merge(
    {
        Name = "Ansible"
    },
    var.common_tags
  )
}