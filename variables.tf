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

 variable "secret_name" {
   default = "timing/rds-password-value3"
 }

variable "rds_secret_arn" {
  default = "arn:aws:secretsmanager:ap-south-1:358308582535:secret:timing/rds-password-value3-tPQpY7"
}

variable "ecs_cluster_name" {
  default = "timing"

}

 variable "ecs_log_group_name" {
     default = "timing/group"

}

variable "app_alb_security_group_name" {
  default = "alb_timing"
}

variable "app_alb_security_group_DES" {
  default = "This security group is to attach timing ALB"
}

variable "ingress_cidr" {
  default = [
   {
    from_port        = 80
    to_port          = 80
    cidr_blocks      = "0.0.0.0/0"
    description      = "opening internet to 80"
   },

   {
    from_port        = 443
    to_port          = 443
    cidr_blocks      = "0.0.0.0/0"
    description      = "opening internet to 443"
   }


]
}


variable "app_alb_name" {
  default = "timing-alb"

}

variable "app_alb_tags" {
  default = {}
}

variable "target_group_name" {
  default = "alb-taget-main"
}


variable "hosted_zone_id" {
  default = "Z09259501IYATK3I3GQTK"
}


