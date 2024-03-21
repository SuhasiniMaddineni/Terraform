# variable "instance_names" {
#     type = list
#     default = ["mongodb", "mysql","catalogue", "web"]
# }

variable "instance_names" {
    type = map
    default = {
        mongodb = "t3.small"
        catalogue = "t2.micro"
        mysql = "t3.small"
        web = "t2.micro"
    }
}

variable "ami-id"{
    type = string
    default = "ami-0f3c7d07486cad139"
}


variable "zone-id"{
    type = string
    default = "Z10326201PJVIVSPKKAFP"
}

variable "domain_name" {
    default = "daws91.online"
}