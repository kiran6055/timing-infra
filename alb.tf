module "app_alb" {
  source                = "../terraform-modules-applicationloadbalancer"
  app_alb_name          = var.app_alb_name
#  load_balancer_type   = "application"
  vpc_id               = local.vpc_id
  security_groups      = [local.app_alb_security_group_id]
  subnets              = local.public_subnet_ids
  tags                  = var.tags
  app_alb_tags          = var.app_alb_tags
  target_group_name     = var.target_group_name
  target_group_arn      = local.target_group_arns
#  aws_instance.test.id          = var.aws_instance.test.id

}
