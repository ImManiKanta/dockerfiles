resource "aws_instance" "docker" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d17be865ead02f3"]
  iam_instance_profile = aws_iam_instance_profile.main.name
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

resource "aws_iam_role" "main" {
  name               = "RoboshopEKSClusterInstall"

    assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

   tags = {
        Name = "RoboshopEKSCluster"
    }
  
}

resource "aws_iam_role_policy_attachment" "main" {
  role       = aws_iam_role.main.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# Create the instance profile
resource "aws_iam_instance_profile" "main" {
  name = "RoboshopEKSCluster"
  role = aws_iam_role.main.name
}
