module "private_s3_bucket" {
  source = "../resource-groups/private-s3-bucket"

  bucket_name  = " " #your bucket name here
  is_ephemeral = false
  versioning    = true
}