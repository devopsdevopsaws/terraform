resource "aws_instance" "padma" {
  ami  = local.ami
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop.id]
  key_name = aws_key_pair.roboshop.key_name
  subnet_id = aws_subnet.public.id
  
  tags = {
    Name = "padma"
  }
}

resource "aws_key_pair" "roboshop" {
  key_name   = "devopsaws"
  public_key = local.public_key
}

resource "aws_route53_record" "roboshop" {
  zone_id = var.zone_id
  name    = "padma.${var.domain_id}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.padma.private_ip]
}