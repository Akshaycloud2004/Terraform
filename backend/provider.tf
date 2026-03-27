provider "aws" {
  region  = "ap-northeast-3"
  profile = "Akshay"
}

terraform {
  backend "s3" {
    bucket  = "akshaycloud.fun"
    region  = "ap-northeast-3"
    key     = "backup/terraform.tfstate"
    profile = "Akshay"
  }
}
