terraform {
  backend "s3" {
    bucket         = "devops-resume-shimon-1b4c1f44"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
