output "ami_id" {
    value = data.aws_ami.latest_amazon_linux.id  
}

output "vpc_id" {
    value = data.aws_vpc.default.id  
}

output "sg_id" {
    value = aws_default_security_group.allow.id  
}