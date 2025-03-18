terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "devops-resume-${var.name}-${random_id.bucket_suffix.hex}"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
