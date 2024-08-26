/*

resource "aws_cloudwatch_metric_alarm" "billing_alarm" {

  provider = aws.nvirginia
  alarm_name          = "MonthlyBillingAlarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = 21600 # 6 hours in seconds
  statistic           = "Maximum"
  threshold           = var.billing_threshold
  alarm_actions       = [aws_sns_topic.billing_alerts.arn]
  
  depends_on = [ aws_sns_topic.billing_alerts ]

  dimensions = {
    Currency = "USD"
  }

  tags = {
    ManagedBy = "Terraform"
  }
}

*/
