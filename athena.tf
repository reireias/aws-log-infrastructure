resource "aws_athena_workgroup" "workgroup" {
  name = "log_infra"

  configuration {
    result_configuration {
      output_location = "s3://${aws_s3_bucket.output.bucket}"
    }
  }
}

resource "aws_athena_database" "log_database" {
  name   = "log_infra"
  bucket = aws_s3_bucket.log_bucket.bucket
}
