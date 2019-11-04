resource "aws_glue_catalog_table" "table" {
  name          = "log"
  database_name = aws_athena_database.log_database.name

  storage_descriptor {
    location      = "s3://${aws_s3_bucket.log_bucket.bucket}/log/"
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    ser_de_info {
      name                  = "stream"
      serialization_library = "org.openx.data.jsonserde.JsonSerDe"

      parameters = {
        paths = "date"
      }
    }

    columns {
      name = "date"
      type = "timestamp"
    }
  }
}
