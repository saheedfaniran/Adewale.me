terraform {
  backend "s3" {
    bucket = "my-aws-tf-state-bucket"
    key = "main"
g   region = "us-east-1"
    dynamodb_table = "my-dynamo-db-table"
  }
}
