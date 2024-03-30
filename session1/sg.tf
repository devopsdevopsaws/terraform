resource "aws_security_group" "padma" {
  name        = var.sg_name
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }
}