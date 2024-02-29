resource "aws_key_pair" "keys" {
  key_name = "terraform-keys"
  public_key = file("~/.ssh/eric-terraform.pub")
}

resource "aws_default_vpc" "default_vpc" {
  
}

resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  description = "Allow ssh inbound traffic"

  vpc_id = aws_default_vpc.default_vpc.id

  ingress {
    description = "TLS from VPC"

    from_port = "22"
    to_port = "22"
    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_instance" "my_ec2" {
  ami = var.ami_id
  instance_type = "t2.micro"

  key_name = aws_key_pair.keys.key_name

  security_groups = [aws_security_group.allow_ssh.name]

  tags = var.tags
}
