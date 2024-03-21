# resource "aws_instance" "web" {
#   #count = 4 # count.index is a special variable given by terraform
#   count = length(var.instance_names)
#   ami           = var.ami-id #devops-practice
#   instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql"  ?  "t3.small" : "t2.micro"

#   tags = {
#     Name = var.instance_names[count.index]
#   }
# }

# resource "aws_route53_record" "www" {
#   #count = 4
#   count = length(var.instance_names)
#   zone_id = var.zone-id
#   name    = "${var.instance_names[count.index]}.${var.domain_name}" #interpolation
#   type    = "A"
#   ttl     = 1
#   records = [var.instance_names[count.index] == "web"  ?  aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
# }


resource "aws_instance" "web" {
  ami           = data.aws_ami.Centos8.id #devops-practice
  instance_type = "t2.micro"
  tags = {
    Name = "Datasource"
  }
}