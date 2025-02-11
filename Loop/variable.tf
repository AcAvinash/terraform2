variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance"{
  type= string
  default = "t2.micro"
}

variable "instnace_name"{
  type=map 
  default= {
    Mongodb= "t3.medium"
    Mysql="t3.medium"
    Redis="t2.micro"
    Cart="t2.micro"
    RabbitMQ="t2.micro"
    Catalogue="t2.micro"
    User="t2.micro"
    Shipping="t2.micro"
    Payment="t2.micro"
    Dispatch="t2.micro"
    Web="t2.micro"
  }
}

variable "zone_id" {
  type    = string
  default = "Z0798189H8VMAOYWAMIV"
}

variable "domain_name"{
  type=string
  default="joindevops.fun"
}