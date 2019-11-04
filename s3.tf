resource "aws_s3_bucket" "log_bucket" {
  bucket        = "reireias-log-infra-log"
}

resource "aws_s3_bucket" "output" {
  bucket        = "reireias-log-infra-output"
}
