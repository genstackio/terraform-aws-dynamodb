# AWS DynamoDB Lambda Stream Policy Terraform module

Terraform module which creates dynamodb lambda stream policy on AWS.

## Usage

```hcl
module "dynamodb-stream-lambda-policy" {
  source     = "genstackio/dynamodb/aws//modules/stream-lambda-policy"

  // ...
}
```
