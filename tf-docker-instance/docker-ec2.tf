resource "aws_instance" "docker" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d17be865ead02f3"]
  user_data = file("docker-install-diskgrow.sh")

   root_block_device {
    volume_size = 50
    volume_type = "gp3"
    # EBS volume tags
    tags = {
          Name = "Docker-instance"
      }
  }

  tags = {
    Name = "Docker-instance"
  }
}

