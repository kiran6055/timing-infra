module "rds_sg" {
  source                     = "github.com/kiran6055/terraform-modules-sg"
  vpc_id                     = local.vpc_id
  security_group_name        = var.rds_security_group_name
  security_group_DES         = var.rds_security_group_DES
  tags                       = var.tags
  # ingress_cidr               = var.ingress_cidr
}

module "app_alb_sg" {
  source                     = "github.com/kiran6055/terraform-modules-sg"
  vpc_id                     = local.vpc_id
  security_group_name        = var.app_alb_security_group_name
  security_group_DES         = var.app_alb_security_group_DES
  tags                       = var.tags
  ingress_cidr               = var.ingress_cidr
}


module "web_alb_sg" {
  source                     = "github.com/kiran6055/terraform-modules-sg"
  vpc_id                     = local.vpc_id
  security_group_name        = var.web_alb_security_group_name
  security_group_DES         = var.web_alb_security_group_DES
  tags                       = var.tags
  ingress_cidr               = var.ingress_cidr
}


