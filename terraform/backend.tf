terraform {
  backend "s3" {
    bucket         = "devops-resume-shimon-eef8c095"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}