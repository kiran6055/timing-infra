module "rds_sg" {
  source                       = "github.com/kiran6055/terraform-modules-sg"
  vpc_id                       = local.vpc_id
  security_group_name          = var.security_group_name
  security_group_description   = var.security_group_description
  tags                         = var.tags
}