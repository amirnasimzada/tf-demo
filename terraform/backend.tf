# Define Terraform backend using a S3 bucket for storing the Terraform state
terraform {
  required_version = ">= 1.6.6"
  backend "s3" {
    bucket = "tf-state-amir-demo"
    key    = "terraform-state/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
