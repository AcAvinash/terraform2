resource "aws_instance" "instance" {
  
  ami= var.ami_id
  instance_type = var.instance_name== "mongodb" ? "t3.micro" : "t2.micro"
  tags= {
    Name= var.instance_name
  }
}