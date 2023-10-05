# variable "volumes" {
#   type        = map(object({
#     access_point_id = string
#     file_system_id  = string
#     volume_name     = string
#   }))
#   description = "Map of volumes made available to the task's container(s)"
# #   default = {
# #     volume1 = {
# #       volume_name     = "efs-volume-1"
# #       file_system_id  = "fs-12345678"
# #       access_point_id = "fsap-87654321"
# #     }
# #   }
# }

variable "aws_account_id" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "aws_region" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "cf_api_endpoint" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "cf_cli_docker_image" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "cf_org" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "cf_password_ssm_param" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "cf_service_instance" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "cf_space" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "cf_username_ssm_param" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "db_clients_security_group_id" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "ecs_cluster_arn" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "ecs_execution_role_arn" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "pass_ecs_execution_role_policy_arn" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "pg_db_endpoint" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "pg_db_name" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "pg_db_password_ssm_param" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "pg_db_username" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "pg_docker_image" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "process_name" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "env" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "vpc_id" {
  type        = string
  description = "ID of the account into which deployments are performed"
}

variable "subnets" {
  type = map(string)
}


variable "resource_name_prefixes" {
  type = map(string)
}
