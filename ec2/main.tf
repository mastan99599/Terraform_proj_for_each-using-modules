
  resource "aws_instance" "web" {
  ami                           = var.ami
  instance_type                 = var.instance_type
  tags                          = var.tagname
  root_block_device {
    volume_type                 = var.volume_type
    volume_size                 = var.volume_size
}
  }


  resource "aws_subnet" "main" {
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.cidr_block
  tags =var.tagname
  
}

resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block2
  instance_tenancy = var.instance_tenancy
  tags = var.tagname
  
}

resource "aws_security_group" "web-sg" {
  name = var.sg_name

  ingress {
    from_port      = var.from_port
    to_port        = var.to_port
    protocol       = var.protocol
    cidr_blocks    = var.cidr_block3
  }

  egress {
    from_port      = var.from_port1
    to_port        = var.to_port1
    protocol       = var.protocol1
    cidr_blocks    = var.cidr_block4
  }
}

#attach security group to ec2
resource "aws_network_interface_sg_attachment" "sg_attachment"{
security_group_id = aws_security_group.web-sg.id
network_interface_id =aws_instance.web.primary_network_interface_id
}
