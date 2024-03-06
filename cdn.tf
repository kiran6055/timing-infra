module "cdn" {
  source = "terraform-aws-modules/cloudfront/aws"

  aliases = ["cdn.awsctr.online"]

  comment             = "this cdn is for testing purpose"
  enabled             = true

  origin = {
    timing-web-alb = {
      domain_name = local.web_alb_dns_name 
      custom_origin_config = {
        http_port              = 80
        https_port             = 443
        origin_protocol_policy = "http-only"
        origin_ssl_protocols   = ["TLSv1", "TLSv1.1", "TLSv1.2"]
      }
    }
  }


  default_cache_behavior = {
    target_origin_id           = "timing-web-alb"
    viewer_protocol_policy     = "redirect-to-https"

    allowed_methods = ["GET", "HEAD", "OPTIONS"]
    cached_methods  = ["GET", "HEAD"]
    compress        = true
    query_string    = true
  }




  viewer_certificate = {
    acm_certificate_arn = module.acm_cdn.acm_certificate_arn
    ssl_support_method  = "sni-only"
  }
}


