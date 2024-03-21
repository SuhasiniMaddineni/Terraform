variable "ingress_rules" {
    default = [
        {
            description      = "allow all ports"
            from_port        = 80 #0 mans all ports
            to_port          = 80
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        },
        {
            description      = "allow all ports"
            from_port        = 443 #0 mans all ports
            to_port          = 443
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        },
        {
            description      = "allow all ports"
            from_port        = 22 #0 mans all ports
            to_port          = 22
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        }
    ]
}