variable "vpc_name" {
    type = string
    default = ""
  
}

variable "vpc_cidr" {
    type = string
    default = ""
  
}

variable "vpc_ig" {
    type = string
    default = ""
  
}

variable "public_subnet1" {
    type = string
    default = ""
  
}
variable "public_subnet2" {
    type = string
    default = ""
  
}

variable "public_subnet1_cidr" {
    default = ""
    type = string
  
}
variable "public_subnet2_cidr" {
    default = ""
    type = string
  
}

variable "az1" {
    default = ""
    type = string
  
}
variable "az2" {
    default = ""
    type = string
  
}
variable "sg_tags" {
    default = ""
    type = string
  
}

variable "ami_id" {
    type = string
    default = ""
  
}
 variable "instance_type" {
    type = string
    default = ""
   
 }

variable "key_pair" {
    type = string
    default = ""
  
}

variable "name" {
    type = string
    default = ""
  
}