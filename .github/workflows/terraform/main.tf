# Create a S3 bucket
resource "aws_s3_bucket" "terraform_state" {
  bucket		  = "test-s3-bucket-amir-nas"
  
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.terraform_state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

data "aws_dynamodb_table" "tableName" {
  name = "amir-tf-dynamodb-demo"
}

resource "aws_vpc" "example-2" {
  cidr_block = "10.0.0.0/16"
}