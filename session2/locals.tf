locals {
  ami_id = data.aws_ami.latest_amazon_linux.id
  instance_type = var.isdev ? "t2.micro" : "t3.micro"
  public_key = file("${path.module}/devopsaws.pub")
}