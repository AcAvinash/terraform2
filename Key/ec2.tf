resource "aws_instance" "instance"{
  ami=var.ami_id
  instance_type = var.instance
  security_groups = [aws_security_group.allow_tls.name]
  key_name = aws_key_pair.deployer.key_name
  tags={
    Name="Roboshop"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = var.sg_name
  vpc_id      = "vpc-07d1ff21353db093a"

  tags = {
    Name = var.sg_name
  }
ingress {
    from_port   = 22                  # Port 22 for SSH
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr         # Ensure this variable has a valid CIDR block
  }

  egress {
    from_port   = 0                   # Allows all outbound traffic
    to_port     = 0
    protocol    = "-1"                # Use "-1" for all protocols
    cidr_blocks = ["0.0.0.0/0"]       # Allow all outbound traffic
  }


}


resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file("${path.module}/devops.pub")
}