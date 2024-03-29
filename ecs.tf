module "ecs" {
   source                = "github.com/kiran6055/terraform-modules-ecs"
   ecs_cluster_name      = var.ecs_cluster_name
   ecs_log_group_name    = var.ecs_log_group_name
   tags                  = var.tags

}

resource "aws_ecr_repository" "app" {
  name                 = "node-app-backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}


resource "aws_ecr_repository" "web" {
  name                 = "node-web-frontend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}

