# Define Terraform backend using a S3 bucket for storing the Terraform state
terraform {
  backend "s3" {
    bucket = "tf-state-amir-demo"
    key    = "terraform-state/terraform.tfstate"
    region = "us-east-1"
  }
}
