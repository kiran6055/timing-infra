variable "tags" {
  type = map
  default = {
    Name = "timing"
    env = "prod"
    terraform = "true"
  }
}

variable "vpc_tags" {
  type = map
  default = {
    Name = "vpc"
  }
}

variable "public_subnet_tags" {
  type = map
  default = {
    Name = "public-subnet"
  }
}

variable "private_subnet_tags" {
  type = map
  default = {
    Name = "private-subnet"
  }
}

variable "database_subnet_tags" {
  type = map
  default = {
    Name = "database-subnet"
  }
}


variable "private_subnet_names" {
  default = ["timing-private-1a", "timing-private-1b"]
}

variable "public_subnet_names" {
  default = ["timing-public-1a", "timing-public-1b"]
}

variable "database_subnet_names" {
  default = ["timing-database-1a", "timing-database-1b"]
}


variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = ["10.0.2.0/24", "10.0.3.0/24"] 
}

variable "private_subnet_cidr" {
  default = ["10.0.4.0/24", "10.0.5.0/24"]
}

variable "azs" {
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "database_subnet_cidr" {
  default = ["10.0.6.0/24", "10.0.7.0/24"]
}

variable "rds_security_group_name" {
  default = "timing"
}

variable "rds_security_group_DES" {
  default = "This security group is to attach timing RDS"
}

# variable "ingress_cidr" {
#   default = []
# }


variable "allocated_storage" {
  default = "10"
  
}

variable "db_name" {
  default = "mydb123"
}

variable "identifier" {
  default = "timing"
}

variable "engine" {
  default = "postgres"
}

variable "engine_version" {
  default =  "14.7-R1"
}

variable "rds_username" {
  default = "adminKiran"
}

variable "instance_type" {
  default = "db.t4g.micro"
}

# variable "secret_name" {
#   default = "timing/rds-password-value"
# }

variable "rds_secret_type_arn" {
  default = "arn:aws:secretsmanager:ap-south-1:573314280082:secret:rds_kiran/timing-I27Kqp"
}

variable "ecs_cluster_name" {
  default = "timing"

}

# variable "ecs_log_group_name {
#   type = string
#   default = "/timing/group"

# }