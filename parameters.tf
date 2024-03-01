resource "aws_ssm_parameter" "vpc_id" {
  name  = "/timing/vpc/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}


resource "aws_ssm_parameter" "public_subnet" {
  name  = "/timing/vpc/public_subnet_ids"
  type  = "StringList"
  value = join(",",local.public_subnet_ids)
}


resource "aws_ssm_parameter" "private_subnet" {
  name  = "/timing/vpc/private_subnet_ids"
  type  = "StringList"
  value = join(",",local.private_subnet_ids)
}




resource "aws_ssm_parameter" "app_alb_security_group_id" {
  name  = "/timing/vpc/app_alb_security_group_id"
  type  = "String"
  value = local.app_alb_security_group_id

}



resource "aws_ssm_parameter" "rds_security_group_id" {
  name  = "/timing/vpc/rds_security_group_id"
  type  = "String"
  value = local.rds_security_group_id

}



resource "aws_ssm_parameter" "rds_end_point" {
  name  = "/timing/vpc/rds_end_point"
  type  = "String"
  value = local.rds_end_point

}


resource "aws_ssm_parameter" "ecs_cluster_id" {
  name  = "/timing/vpc/ecs_cluster_id"
  type  = "String"
  value = local.ecs_cluster_id

}



resource "aws_ssm_parameter" "target_group_arn" {
  name  = "/timing/vpc/target_group_arns"
  type  = "StringList"
  value = local.target_group_arns

}


resource "aws_ssm_parameter" "app_alb_arn" {
  name  = "/timing/vpc/app_alb_arn"
  type  = "StringList"
  value = local.app_alb_arn

}



resource "aws_ssm_parameter" "rds_secret_arn" {
  name  = "/timing/vpc/rds_secret_arn"
  type  = "String"
  value = var.rds_secret_arn

}



resource "aws_ssm_parameter" "app_alb_dns_name" {
  name  = "/timing/vpc/app_alb_dns_name"
  type  = "String"
  value = module.app_alb.app_alb_dns_name 
}


resource "aws_ssm_parameter" "app_alb_zone_id" {
  name  = "/timing/vpc/app_alb_zone_id"
  type  = "String"
  value = module.app_alb.app_alb_zone_id

}


