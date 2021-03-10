# AWS DynamoDB Lambda Stream Terraform module

Terraform module which creates dynamodb lambda stream on AWS.

## Usage

```hcl
module "dynamodb-stream-lambda" {
  source     = "genstackio/dynamodb/aws//modules/stream-lambda"

  // ...
}
```
