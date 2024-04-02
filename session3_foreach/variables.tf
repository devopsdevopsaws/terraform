variable "region" {
    default = "us-east-1"  
}

variable "aws_instance" {
    default = {
        Mongodb = "t3.micro"
        MySql = "t3.micro"
        Redis = "t2.micro"
        Catalogue = "t2.micro"
        Cart = "t2.micro"
        Web = "t2.micro"
    }  
}

variable "zone_id" {
    default = "Z020064935UZCTKXJV1XV"
  
}

variable "domain_id" {
    default = "padmasrikanth.shop"
  
}

variable "ingress" {
  type = list
  default = [
    {
        from_port = 80
        to_port = 80
        description = "allowing PORT 80 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 443
        to_port = 443
        description = "allowing PORT 443 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 22
        to_port = 22
        description = "allowing PORT 22 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}