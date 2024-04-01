output "private_ip" {
    value = aws_instance.padma[*].private_ip  
}