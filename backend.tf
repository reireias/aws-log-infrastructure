terraform {
  backend "s3" {
    bucket  = "log-infrastructure-terraform"
    key     = "terraform/state"
    region  = "ap-northeast-1"
    profile = "default"
  }
}
