variable "ami_id"{
type=string
default= "ami-09c813fb71547fc4f"
}

variable "instance_name"{
type=list
default= ["cart","payment","shipping","mongodb"]
}

variable "domain"{
  type= string
  default="joindevops.fun"
}

variable "zone_id" {
  type = string
  default = "Z0798189H8VMAOYWAMIV"
}