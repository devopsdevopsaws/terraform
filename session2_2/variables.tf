variable "region" {
    default = "us-east-1"  
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]  
}

variable "isdev" {
    default = true  
}

variable "ami" {
    default = "ami-0f3c7d07486cad139"  
}

variable "instance_name" {
    default = ["Mongodb","Catalogue","Cart","User","redis","Mysql","payment","shipping","RabbitMQ","Web"]
}

variable "zone_id" {
    default = "Z020064935UZCTKXJV1XV"
  
}

variable "domain_id" {
    default = "padmasrikanth.shop"
  
}



