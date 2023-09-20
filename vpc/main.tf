module "vpc" {
  source                = "../../terraform-modules/vpc"
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_cidr   = var.private_subnet_cidr
  database_subnet_cidr  = var.database_subnet_cidr
  azs                   = var.azs
  public_subnet_names   = var.public_subnet_names
  private_subnet_names  = var.private_subnet_names
  database_subnet_names = var.database_subnet_names
  tags                  = var.tags
  PublicRT_tags         = local.PublicRT_tags
  PrivateRT_tags        = local.PrivateRT_tags
  databaseRT_tags       = local.databaseRT_tags
}



# resource "aws_security_group" "web" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = module.vpc.vpc_id

#   ingress {
#     description      = "TLS from VPC"
#     from_port        = 443
#     to_port          = 443
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]

#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = var.tags
# }