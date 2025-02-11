variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance"{
  type= string
  default = "t2.micro"
}

variable  "sg_name" {
  type= string
  default= "allow-me"

}

variable "key_name"{
  type=string
  default="devops"
}



variable "sg_cidr"{
  type=list
  default=[
    "0.0.0.0/0",
  ]
}