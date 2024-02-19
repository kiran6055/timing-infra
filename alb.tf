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


#  target_groups        = [
#    {
#      name_prefix          = "timalb"
#      backend_protocol     = "HTTP"
#      backend_port         = 80
#      target_type          = "ip" # for ECS we need to use IP
#      deregistration_delay = 10
#      health_check = {
#        enabled             = true
#        interval            = 15
#        path                = "/health" # application developer should configure this
#        healthy_threshold   = 3
#        unhealthy_threshold = 3
#        timeout             = 6
#        protocol            = "HTTP"
##        matcher             = "200-399"
#      }
#    }
#  ]

#  listeners = [
#    {
#      port     = 80
#      protocol = "HTTP"
#      default_action = [
#        {
#          type             = "fixed-response"
#          status_code      = "200"
#          content_type     = "text/plain"
#          content          = "OK"
#        }
#      ]
#    }
#  ]









}
