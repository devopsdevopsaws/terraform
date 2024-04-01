resource "aws_instance" "padma" {
  count = 10
  ami = var.ami
  instance_type = var.instance_name[count.index] == "Mongodb" || var.instance_name[count.index] == "Mysql" ? "t3.micro" : "t2.micro"
  security_groups = [aws_default_security_group.allow.name]  

  tags = {
    Name = var.instance_name[count.index]
  }
}

resource "aws_route53_record" "www" {
  count = 10
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_id}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.padma[count.index].private_ip]
}