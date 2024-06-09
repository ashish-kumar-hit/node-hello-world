resource "aws_ecs_service" "ECS-Service" {
  name                               = "hello-world"
  launch_type                        = "FARGATE"
  platform_version                   = "LATEST"
  cluster                            = aws_ecs_cluster.ECS.id
  task_definition                    = aws_ecs_task_definition.TD.arn
  scheduling_strategy                = "REPLICA"
  desired_count                      = 2
  deployment_minimum_healthy_percent = 100
  deployment_maximum_percent         = 200
  depends_on                         = [aws_iam_role.iam-role]

  network_configuration {
    assign_public_ip = true
    security_groups  = [aws_security_group.SG.id]
    subnets          = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]
  }
}
