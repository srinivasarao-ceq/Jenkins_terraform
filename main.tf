data "aws_ami" "amazon_linux2" {
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
  owners = ["amazon"]
}


module "web_sg" {
    source = "./SG"
   
    SG_Name = var.SG_Name
    
}

resource "aws_instance" "web_server" {
  ami           = data.aws_ami.amazon_linux2.id
  instance_type = var.instance_type
  security_groups = [module.web_sg.SG-Id]

  tags = {
    Name = var.tags
  }
}