# output "public_ips" {
#   value = { for key, instance in aws_instance.roboshop : key => instance.public_ip }
# }

# output "private_ips" {
#   value = { for key, instance in aws_instance.roboshop : key => instance.private_ip }
# }

output "aws_instance_info"{
  value= aws_instance.roboshop
}

