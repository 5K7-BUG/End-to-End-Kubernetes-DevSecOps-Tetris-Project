terraform {
  backend "s3" {
    bucket       = "terraform-backend-bot1"
    region       = "us-east-1"
    key          = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    dynamodb_table = "state-lock-file"
    encrypt      = true
    use_lockfile = true
  }
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      version = ">= 6.23.0"
      source  = "hashicorp/aws"
    }
  }
}
