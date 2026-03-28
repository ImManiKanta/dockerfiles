output "public_address"{
    value = aws_instance.docker.public_ip
}

output "private_address"{
    value = aws_instance.docker.private_ip
}