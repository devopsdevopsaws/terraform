resource "aws_security_group" "roboshop" {
  name        = var.sg_name
  vpc_id      = aws_vpc.main.id

  dynamic ingress {
    for_each = var.ingress
    content {
    description = ingress.value.description
    protocol    = ingress.value.protocol
    from_port   = ingress.value.from_port
    to_port     = ingress.value.to_port
    cidr_blocks = ingress.value.cidr_blocks
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "roboshop-sg"
  }
}