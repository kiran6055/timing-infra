variable "tags" {
  type = map
  default = {
    Name = "kiran-devops"
    env = "prod"
  }
}

variable "cidr" {
  type = map
  default = {
    cidr = "10.0.0.0/16"
  }
}

variable "cidr" {
  type = map
  default = {
    cidr = "10.0.0.0/16"
  }
}

variable "public_cid" {
  type = map
  default = {
    cidr = "10.0.1.0/24"
  }
}

variable "private_cidr" {
  type = map
  default = {
    cidr = "10.0.2.0/24"
  }
}

variable "database_cidr" {
  type = map
  default = {
    cidr = "10.0.3.0/24"
  }
}