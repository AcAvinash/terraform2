# values mentioned in variables.tf are default values
# we can always override them

variable "ami_id" {
  type = string # this is the data type
  default = "ami-09c813fb71547fc4f" # this is the default value
}

variable "instances" {
  type = map
  default = {
    MongoDB = "t3.medium"
    MySQL = "t3.medium"
    Redis = "t2.micro"
    RabbitMQ = "t2.micro"
    Catalogue = "t2.micro"
    User = "t2.micro"
    Cart = "t2.micro"
    Shipping = "t2.micro"
    Payment = "t2.micro"
    Web = "t2.micro"
  }
}

variable "zone_id" {
  default = "Z0798189H8VMAOYWAMIV"
}
variable "domain" {
  default = "joindevops.fun"
}

# declaring variables but not providing value
variable "sg_name" {
    type = string
    default = "allow-all"
}

variable "sg_cidr" {
  default = ["0.0.0.0/0"]
}