
data "aws_ami" "example" {

  most_recent      = true
  owners           = ["amazon"]

     filter {
        name   = "name"
        values = ["amzn2-ami-kernel-5.10-hvm-*.0-x86_64-gp2"]
    }

}

resource "aws_instance" "instance"{
  ami= data.aws_ami.example.id
  instance_type= "t2.micro"
}

data "aws_vpc" "default"{
  default = true
}

resource "aws_security_group" "default" {
  name="aws_security_group"
  vpc_id = data.aws_vpc.default.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

output "ami_id"{
  value= data.aws_ami.example
}
