locals {
  ami = data.aws_ami.latest_amazon_linux.id
  public_key = file("${path.module}/devopsaws.pub")
}