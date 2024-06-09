resource "aws_ecs_cluster" "ECS" {
  name = var.cluster_name

  tags = {
    application = var.application
  }
}   