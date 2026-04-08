output "public_address"{
    value = aws_instance.workstation.public_ip
}

output "private_address"{
    value = aws_instance.workstation.private_ip
}