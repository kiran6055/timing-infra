

locals {
  PublicRT_tags             = format("%s+%s",lookup(var.tags, "Name"), "publicRT")
  PrivateRT_tags            = format("%s+%s",lookup(var.tags, "Name"), "privateRT")
  databaseRT_tags           = format("%s+%s",lookup(var.tags, "Name"), "databaseRT")
# we have used concat two combine twostrings in terraform
  
  vpc_id                    	= module.vpc.vpc_id
  rds_security_group_id         	= module.rds_sg.security_group_id
  db_subnet_group_name      	= module.vpc.db_subnet_group_name
  rds_end_point             	= module.rds.rds_end_point
  ecs_cluster_id            	= module.ecs.ecs_cluster_id
  app_alb_security_group_id 	= module.app_alb_sg.security_group_id

  private_subnet_ids        	= module.vpc.private_subnet_ids
  public_subnet_ids         	= module.vpc.public_subnet_ids
  target_group_arns             = module.app_alb.target_group_arns
  app_alb_dns_name              = data.aws_ssm_parameter.app_alb_dns_name.value
  app_alb_zone_id               = data.aws_ssm_parameter.app_alb_zone_id.value
  app_alb_record_name		= module.route53.app_alb_record_name
  app_alb_arn                   = module.app_alb.alb_arn



# we have give app_alb_dns_name & app_alb_zone_id in terraform-modules-route53 child module those 2 variables are given outputs in application loadbalancer childmodules we will catach them in locals in terraform-modules-route53 or we will give this as parameters in application loadbalancer and will take them in locals as terraform-modules-route53

}

