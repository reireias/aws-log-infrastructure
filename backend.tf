terraform {
  backend "s3" {
    bucket  = "reireias-log-infrastructure-terraform"
    key     = "terraform/state"
    region  = "ap-northeast-1"
    profile = "default"
  }
}
