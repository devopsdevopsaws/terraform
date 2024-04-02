resource "aws_instance" "padma" {
  for_each = var.aws_instance
  ami           = local.ami
  instance_type = each.value
  security_groups = [aws_default_security_group.roboshop.name]
  key_name = aws_key_pair.deployer.key_name

  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "www" {
  for_each = aws_instance.padma
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_id}"
  type    = "A"
  ttl     = 300
  records = [ each.key =="web" ? each.value.public_ip : each.value.private_ip ]
}

resource "aws_key_pair" "deployer" {
  key_name   = "devopsaws"
  public_key = local.public_key
}