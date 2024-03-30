resource "aws_instance" "padma" {
  ami                     = var.ami
  instance_type           = var.instance_type
  security_groups         = [aws_security_group.padma.name]
}