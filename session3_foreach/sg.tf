resource "aws_default_security_group" "roboshop" {
  vpc_id = data.aws_vpc.default.id
  
  dynamic ingress {
    for_each = var.ingress #here you will get a variable ingress
    content {
        description      = ingress.value["description"]
        from_port        = ingress.value.from_port
        to_port          = ingress.value.to_port
        protocol         = ingress.value.protocol
        cidr_blocks      = ingress.value.cidr_blocks
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}