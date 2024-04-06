variable "cidr_block" {
}

variable "enable_dns_support" {
    default = true  
}

variable "enable_dns_hostnames" {
    default = true  
}

variable "common_tags" {
    default = {}
}

variable "vpc_tags" {
    default = {}  
}

variable "igw_tags" {
    default = {}  
}

variable "public_subnet_cidr" {
    default = []  
}

variable "azs" {
    default = []  
}

variable "public_subnet_names" {
    default = []      
}

variable "private_subnet_cidr" {
    default = []  
}

variable "private_subnet_names" {
    default = []      
}

variable "database_subnet_cidr" {
    default = []  
}

variable "database_subnet_names" {
    default = []      
}

variable "public_route_table_tags" {
    default = {}  
}

variable "private_route_table_tags" {
    default = {}  
}

variable "database_route_table_tags" {
    default = {}  
}
