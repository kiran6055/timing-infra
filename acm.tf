module "acm" {
  source      = "terraform-aws-modules/acm/aws"
  version     = "~> 4.0"
  domain_name = "*.awsctr.online"
  zone_id     = var.hosted_zone_id
  subject_alternative_names = [
    "*.awsctr.online",
    "app.awsctr.online",
    "web.awsctr.online",
    "cdn.awsctr.online",
  ]
  wait_for_validation = true
  tags                = var.tags
}



module "acm_cdn" {
  source      = "terraform-aws-modules/acm/aws"
  version     = "~> 4.0"
  domain_name = "*.awsctr.online"
  zone_id     = var.hosted_zone_id
  subject_alternative_names = [
    "*.awsctr.online",
    "app.awsctr.online",
    "web.awsctr.online",
    "cdn.awsctr.online",
  ]
  wait_for_validation = true
  tags                = var.tags

  providers = {
    aws = aws.east-1-cdn
  }
}


