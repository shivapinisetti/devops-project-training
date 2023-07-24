resource "aws_dynamodb_table" "terraform_dblock" {
  name         = "terraform-db-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}