resource "aws_security_group" "ec2-sg" {
  name        = var.SG_Name
  description = "Security Group fo TU Bootcamp"
  vpc_id = var.vpc-Id

ingress {
    from_port   = var.ssh_port
    protocol    = "tcp"
    to_port     = var.ssh_port
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SSH connection to EC2 instance"
  }

ingress {
    from_port   = var.web_port
    protocol    = "tcp"
    to_port     = var.web_port
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow web traffic to EC2 instance"
  }

 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.tags
  }
}