resource "aws_dynamodb_table" "dynamodb_table" {
  name         = "${var.env_name}-${var.table_name_value}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "Id"


  attribute {
    name = "Id"
    type = "S"
  }
}
