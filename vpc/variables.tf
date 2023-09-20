variable "tags" {
  type = map
  default = {
    Name = "kiran-devops"
    env = "prod"
  }
}


variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_cidr" {
  default = "10.0.1.0/24" 
}

variable "private_cidr" {
  default = "10.0.2.0/24"
}


variable "database_cidr" {
  default = "10.0.3.0/24"
}
