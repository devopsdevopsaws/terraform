variable "region" {
    default = "us-east-1"  
}

variable "ami" {
    default = "ami-0f3c7d07486cad139"  
}

variable "instance_type" {
    default = "t2.micro"  
}

variable "sg_name" {
    default = "padma"  
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]  
}
