resource "aws_instance" "instance"{
  count=length(var.instance_name)
 ami=var.ami_id
 instance_type = var.instance_name[count.index]=="mongodb" ? "t3.micro" : "t2.micro"
 tags={
  Name=var.instance_name[count.index]
 }
}

#routing
resource "aws_route53_record" "www" {
  count=4
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 300
  records = [var.instance_name[count.index]]
}