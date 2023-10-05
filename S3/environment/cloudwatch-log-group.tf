module "cloudwatch_log_group" {
  source = "../resource-groups/cloudwatch-log-group"

  log_group_name = "preprod-s3-migrate-log-group"
}
