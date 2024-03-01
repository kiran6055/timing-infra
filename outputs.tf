output "vpc_id" {
  value = module.vpc.vpc_id
}

 output "rds_security_group_id" {
   value = local.rds_security_group_id
 }

  output "rds_end_point" {
   value = local.rds_end_point
 }

output "app_alb_security_group_id" {
 value = local.app_alb_security_group_id
}

output "ecs_cluster_id" {
 value = local.ecs_cluster_id

}

output "private_subnet_ids" {
  value = local.private_subnet_ids
}

output "public_subnet_ids" {
  value = local.public_subnet_ids
}


output "target_group_arns" {
  value = local.target_group_arns 
}


output "app_alb_arn" {
  value = local.app_alb_arn
}

output "app_alb_record_name" {
  value = local.app_alb_record_name
}

