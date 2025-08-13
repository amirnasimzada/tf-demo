# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create a S3 bucket
resource "aws_s3_bucket" "terraform_state" {
  bucket		  = "test-s3-bucket-amir-nas"
  
}

data "aws_dynamodb_table" "tableName" {
  name = "amir-tf-dynamodb-demo"
}