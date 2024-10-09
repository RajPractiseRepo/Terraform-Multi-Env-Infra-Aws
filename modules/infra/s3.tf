resource "aws_s3_bucket" "s3-bucket" {
  bucket = "${var.env_name}-${var.bucket_name_value}"
}
