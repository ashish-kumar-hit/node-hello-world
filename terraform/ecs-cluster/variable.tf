variable "region" {
  type = string
  default = "us-east-1"
}
variable "cluster_name" {
  type = string
  default = "hello-world-cluster"
}

variable "application" {
  type = string
  default = "cloudOps"
}

variable "ecr_role" {
  type = string
  default = "ECS-execution-role"
}

variable "ecr_policy" {
  type = string
  default = "ECS-execution-role-policy"
}