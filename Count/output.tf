output "name"{
  value= aws_instance.instance[*].private_ip
}