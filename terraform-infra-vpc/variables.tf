variable "region" {
    default = "us-east-1"  
}

variable "cidr_block" {
    default = "10.0.0.0/16"  
}

variable "common_tags" {
    default = {    
    env = "dev"
    terraform = "true"
    }  
}

variable "project_name" {
    default = "ROBOSHOP"
}

variable "vpc_tags" {
    default = {
        Name = "roboshop-vpc" 
    }     
}

variable "igw_tags" {
    default = {
        Name = "roboshop-igw"
    }  
}

variable "public_subnet_cidr" {
    default = ["10.0.1.0/24","10.0.2.0/24"]  
}

variable "private_subnet_cidr" {
    default = ["10.0.11.0/24","10.0.12.0/24"]  
}

variable "database_subnet_cidr" {
    default = ["10.0.21.0/24","10.0.22.0/24"]    
}

