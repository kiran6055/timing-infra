module "vpc" {
  source = "../../terraform-modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_cidr = var.public_cidr
  private_cidr = var.private_cidr
  database_cidr = var.database_cidr
  tags = merge(var.tags, {
    Name ="timing"})
  publicsubnet_tags = merge(var.tags, {
    Name ="timing"})
  privatesubnet_tags = merge(var.tags, {
    Name ="timing"})
  databasesubnet_tags = merge(var.tags, {
    Name ="timing"})
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