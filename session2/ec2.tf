resource "aws_instance" "padma" {
  ami           = local.ami_id
  instance_type = local.instance_type
  security_groups = [aws_default_security_group.allow.name]
  key_name = aws_key_pair.deployer.key_name

  tags = {
    Name = "Padma"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = local.public_key
}

