resource "aws_s3_bucket" "storage_bucket" {
  bucket = "terraform-demo-bucket-123"
  acl    = "private"
  tags   = { Name = "TerraformBucket" }
}
