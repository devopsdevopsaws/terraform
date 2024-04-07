variable "region" {
    default = "us-east-1"  
}

variable "cidr_block" {
    default = "10.1.0.0/16"  
}

variable "common_tags" {
    default = {    
    env = "dev"
    terraform = "true"
    }  
}

variable "project_name" {
    default = "amazon"
}

variable "vpc_tags" {
    default = {
        Name = "amazon-vpc" 
    }     
}

variable "igw_tags" {
    default = {
        Name = "amazon-igw"
    }  
}

variable "public_subnet_cidr" {
    default = ["10.1.1.0/24","10.1.2.0/24"]
}

variable "private_subnet_cidr" {
    default = ["10.1.11.0/24","10.1.12.0/24"]
}

variable "database_subnet_cidr" {
    default = ["10.1.21.0/24","10.1.22.0/24"]
}