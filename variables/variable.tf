#command line
#-var-file
#terraform.tfvars

variable "ami-id"{
    type = string
    default = "ami-0f3c7d07486cad139"
}

variable "instance_type"{
    type = string
    #default = "t2.micro"

}

variable "tags"{
    type = map 
    default = {
       Name = "HelloTerraform"
       Environment = "Dev"
       Terraform = "True"
       Author = "Suhasini"
       Organization = "Joindevops"
    }
}

variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
}

variable "sg-description" {
    type = string
    default = "Allow alltraffic"

}

variable "inbound-from-port"{
    type = number
    default = 0
}

variable "cidr_blocks"{
    type = list
    default = ["0.0.0.0/0"]
}