resource "aws_instance" "jenkins-instance" {
  ami           = var.instance_ami
  instance_type = "t2.micro"
  key_name      = var.keyname

  vpc_security_group_ids = [aws_security_group.sg_allow_ssh_jenkins.id]
  subnet_id              = var.private_subnets

  user_data = file("install_jenkins.sh")

  associate_public_ip_address = true
  tags = {
    Name = "Jenkins-EC2-Instance"
  }
}

resource "aws_security_group" "sg_allow_ssh_jenkins" {
  name        = "allow_ssh_jenkins"
  description = "Allow SSH and Jenkins inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = "My-jenkins-ec2-instance-sg"
  }
}
