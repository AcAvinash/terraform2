variable "ami_id"{
type=string
default= "ami-09c813fb71547fc4f"
}

variable "instance_name" {
  type=string
  default= "cart"
}

variable "instance_type" {
  type=string
  default= "t2.micro"
}