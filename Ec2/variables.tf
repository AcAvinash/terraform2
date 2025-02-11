#variable  in terraform only takes three things:- default type and description
variable "ami" {
 type=string
 default="ami-09c813fb71547fc4f"
}

variable "instance_type" {
 type=string
 default="t2.micro"
}

variable "security_group_name" {
  type=string
  default= "allow_all"
}

variable "sg_cidr"{
  type=list
  default=[
    "0.0.0.0/0",
  ]
}