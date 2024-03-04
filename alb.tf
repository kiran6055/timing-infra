module "alb" {
  source                = "../terraform-modules-applicationloadbalancer"
  app_alb_name          = var.app_alb_name
#  load_balancer_arn     = local.load_balancer_arn
  vpc_id                = local.vpc_id
  security_groups       = [local.app_alb_security_group_id]
  subnets               = local.public_subnet_ids
  tags                  = var.tags
  target_group_name     = var.target_group_name
  target_group_arn      = local.target_group_arn
#  alb_arn               = local.alb_arn
  app_alb_tags          = var.app_alb_tags

}



module "web_alb" {
  source                = "../terraform-modules-applicationloadbalancer"
  app_alb_name          = var.web_alb_name
#  load_balancer_arn     = local.web_load_balancer_arn
  vpc_id                = local.vpc_id
  security_groups       = [local.web_alb_security_group_id]
  subnets               = local.public_subnet_ids
  tags                  = var.tags
  target_group_name     = var.web_target_group_name
  target_group_arn      = local.web_target_group_arn
#  alb_arn               = local.alb_arn
  app_alb_tags          = var.web_alb_tags

}


