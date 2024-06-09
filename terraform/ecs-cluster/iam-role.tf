resource "aws_iam_role" "iam-role" {
  name               = var.ecr_role
  assume_role_policy = file("${path.module}/iam-role.json")
}
