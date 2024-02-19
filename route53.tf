module "route53" {
  source                = "../terraform-modules-route53"
  hosted_zone_id        = local.hosted_Zone_id
  zone_name		= local.zone_name
  app_alb_record_name   = local.app_alb_record_name
  app_alb_dns_name      = local.app_alb_dns_name
  app_alb_zone_id       = local.app_alb_zone_id      

}
