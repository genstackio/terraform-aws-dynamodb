module "policy" {
  count       = (null != var.lambda_role_name) ? 1 : 0
  source      = "genstackio/policy/aws"
  version     = "0.2.0"
  name_prefix = "dynamodb-stream-"
  role_name   = var.lambda_role_name
  statements  = [
    {
      effect    = "Allow"
      actions   = [
        "dynamodb:GetRecords",
        "dynamodb:GetShardIterator",
        "dynamodb:DescribeStream",
        "dynamodb:ListStreams"
      ]
      resources = ["${var.table_arn}/*"]
    }
  ]
}