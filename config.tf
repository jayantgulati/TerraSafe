resource "aws_config_configuration_recorder" "config" {

  name     = var.config_recorder
  role_arn = aws_iam_role.config_role.arn

  recording_group {
    all_supported                 = "true"
    include_global_resource_types = "true"
  }

}

resource "aws_config_delivery_channel" "main" {
  name           = var.config_delivery_channel
  s3_bucket_name = aws_s3_bucket.config_bucket.bucket
}