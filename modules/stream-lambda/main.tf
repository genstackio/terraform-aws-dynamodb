module "policy" {
  source           = "../stream-lambda-policy"
  lambda_role_name = var.lambda_role_name
  table_arn        = var.table_arn
}

resource "aws_lambda_event_source_mapping" "event_source_mapping" {
  event_source_arn  = var.table_stream_arn
  enabled           = true
  function_name     = var.lambda_arn
  starting_position = "LATEST"
}