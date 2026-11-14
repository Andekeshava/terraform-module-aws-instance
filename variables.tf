# Optional
variable "aws_instance" {
    type = string
    default = "t3.micro"
}

variable "environment" {   #mandatory

}

variable "project" {  #mandatory
  
}

variable "component"{  #mandatory

}

variable "sg_ids" {
    type = list() #mandatory
  
}

variable "ec2_tags" {
    default = {} #empty optional
}