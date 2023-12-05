data "aws_iam_policy_document" "read_objects" {
  version = "2012-10-17"

  statement {
    sid = "ListBucketppgproductionbulkupload"

    actions = [
      "s3:ListBucket"
    ]

    effect = "Allow"

    resources = [
      data.aws_s3_bucket.existing_bucket.arn
    ]
  }

  statement {
    sid = "GetObjectppgproductionbulkupload"

    actions = [
      "s3:GetObject"
    ]

    effect = "Allow"

    resources = [
      "${data.aws_s3_bucket.existing_bucket.arn}/*",
    ]
  }
}

data "aws_iam_policy_document" "write_objects" {
  version = "2012-10-17"

  statement {
    sid = "PutObjectppgproductionbulkupload"

    actions = [
      "s3:PutObject"
    ]

    effect = "Allow"

    resources = [
      "${data.aws_s3_bucket.existing_bucket.arn}/*",
    ]
  }
}

data "aws_iam_policy_document" "delete_objects" {
  version = "2012-10-17"

  statement {
    sid = "DeleteObjectppgproductionbulkupload"

    actions = [
      "s3:DeleteObject"
    ]

    effect = "Allow"

    resources = [
      "${data.aws_s3_bucket.existing_bucket.arn}/*",
    ]
  }
}
