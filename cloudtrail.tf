resource "aws_cloudtrail" "cloudtrail" {

  name                          = var.cloudtrail_name
  s3_bucket_name                = aws_s3_bucket.cloudtrail_bucket.bucket
  enable_logging                = "true"
  enable_log_file_validation    = "true"
  include_global_service_events = "true"
  is_multi_region_trail         = "true"
  is_organization_trail         = "true"
  tags = {
    Name = var.cloudtrail_name
  }

  insight_selector {
    insight_type = "ApiCallRateInsight"
  }
  insight_selector {
    insight_type = "ApiErrorRateInsight"
  }

  depends_on = [aws_s3_bucket.cloudtrail_bucket, aws_organizations_organization.org]

  event_selector {
    read_write_type           = "All"
    include_management_events = "true"
    data_resource {
      type   = "AWS::S3::Object"
      values = ["arn:aws:s3:::"] # Monitors all S3 objects
    }
    data_resource {
      type   = "AWS::Lambda::Function"
      values = ["arn:aws:lambda"]
    }
  }
}