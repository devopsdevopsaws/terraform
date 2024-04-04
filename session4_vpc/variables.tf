variable "region" {
    default = "us-east-1"  
}

variable "sg_name" {
    default = "roboshop"  
}

variable "ingress" {
    default = [
        {
         description = "Allow traffic from ssh"
         protocol    = "tcp"
         from_port   = 22
         to_port     = 22
         cidr_blocks = ["0.0.0.0/0"]
        },
        {
         description = "Allow traffic from HTTP"
         protocol    = "tcp"
         from_port   = 80
         to_port     = 80
         cidr_blocks = ["0.0.0.0/0"]
        },
        {
         description = "Allow traffic from HTTPs"
         protocol    = "tcp"
         from_port   = 443
         to_port     = 443
         cidr_blocks = ["0.0.0.0/0"]
        }
    ]  
}

variable "zone_id" {
    default = "Z020064935UZCTKXJV1XV"  
}

variable "domain_id" {
    default = "padmasrikanth.shop"  
}