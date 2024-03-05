

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
  web_alb_security_group_id     = module.web_alb_sg.security_group_id

  private_subnet_ids        	= module.vpc.private_subnet_ids
  public_subnet_ids         	= module.vpc.public_subnet_ids
  target_group_arn               = module.alb.target_group_arn

  web_target_group_arn         = module.web_alb.target_group_arn
  app_alb_dns_name              = module.alb.app_alb_dns_name
  app_alb_zone_id               = module.alb.app_alb_zone_id
  app_alb_record_name		= module.route53.app_alb_record_name
  web_alb_dns_name              = module.web_alb.web_alb_dns_name
  web_alb_zone_id               = module.web_alb.web_alb_zone_id
  web_alb_record_name           = module.route53.web_alb_record_name

  app_alb_arn                   = module.alb.app_alb_arn
  web_alb_arn                   = module.web_alb.web_alb_arn


# we have give app_alb_dns_name & app_alb_zone_id in terraform-modules-route53 child module those 2 variables are given outputs in application loadbalancer childmodules we will catach them in locals in terraform-modules-route53 or we will give this as parameters in application loadbalancer and will take them in locals as terraform-modules-route53

}

