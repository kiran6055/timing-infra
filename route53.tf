module "route53" {
  source                = "github.com/kiran6055/terraform-modules-route53"
  record_name		= var.record_name
  hosted_zone_id    	= var.hosted_zone_id
  app_alb_record_name   = var.app_alb_record_name
  app_alb_dns_name      = local.app_alb_dns_name
  app_alb_zone_id       = local.app_alb_zone_id     



  web_alb_record_name   = var.web_alb_record_name
  web_alb_dns_name      = local.web_alb_dns_name
  web_alb_zone_id       = local.web_alb_zone_id
  web_record_name       = var.web_record_name



  cdn_record_name       = var.cdn_record_name
  cdn_alb_dns_name   = module.cdn.cloudfront_distribution_domain_name
  cdn_alb_zone_id       = module.cdn.cloudfront_distribution_hosted_zone_id

}



