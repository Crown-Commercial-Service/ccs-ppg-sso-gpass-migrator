module "gpaas_s3_migrator" {
  source = "../modules/gpaas-s3-migrator"

  lambda_dist_bucket_id                 = aws_s3_bucket.lambda_dist.id
  migration_workers_maximum_concurrency = 2
  migrator_name                         = "sand-s3-migrator"
  resource_name_prefixes = {
    normal        = "sand"
    hyphens       = "PREFIX-123"
    hyphens_lower = "prefix-n123"
  }
  # target_bucket_id                                 = module.private_s3_bucket.bucket_id
  # target_bucket_write_objects_policy_document_json = module.private_s3_bucket.write_objects_policy_document_json

  target_bucket_id                                 = module.private_s3_bucket.bucket_id
  target_bucket_write_objects_policy_document_json = module.private_s3_bucket.write_objects_policy_document_json

}

