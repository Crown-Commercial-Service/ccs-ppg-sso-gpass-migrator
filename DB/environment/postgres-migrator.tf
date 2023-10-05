module "postgres_migrator_adaptor" {
  source = "../modules/postgres_migrator"

  aws_account_id                     = var.aws_account_id
  aws_region                         = var.aws_region
  cf_api_endpoint                    = var.cf_api_endpoint
  cf_cli_docker_image                = var.cf_cli_docker_image
  cf_org                             = var.cf_org
  cf_password_ssm_param              = var.cf_password_ssm_param
  cf_service_instance                = var.cf_service_instance
  cf_space                           = var.cf_space
  cf_username_ssm_param              = var.cf_username_ssm_param
  db_clients_security_group_id       = var.db_clients_security_group_id
  ecs_cluster_arn                    = var.ecs_cluster_arn
  ecs_execution_role_arn             = var.ecs_execution_role_arn
  pass_ecs_execution_role_policy_arn = var.pass_ecs_execution_role_policy_arn
  pg_db_endpoint                     = var.pg_db_endpoint
  pg_db_name                         = var.pg_db_name
  pg_db_password_ssm_param           = var.pg_db_password_ssm_param
  pg_db_username                     = var.pg_db_username
  pg_docker_image                    = var.pg_docker_image
  process_name                       = var.process_name
  resource_name_prefixes             = var.resource_name_prefixes 
  subnets                            = var.subnets 
  vpc_id                             = var.vpc_id
}