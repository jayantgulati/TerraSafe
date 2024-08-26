
/*
data "aws_region" "current" {}


resource "aws_sns_topic" "billing_alerts" {
    provider = aws.nvirginia
    
    
      
}

resource "aws_sns_topic_policy" "billing_alert_policy" {
    arn    = aws_sns_topic.billing_alerts.arn

    policy = jsonencode({
        Version = "2012-10-17",
        Statement = [
        {
            Sid       = "AWSBudgets-notification-1",
            Effect    = "Allow",
            Principal = {
            Service = "budgets.amazonaws.com"
            },
            Action   = "SNS:Publish",
            Resource = aws_sns_topic.billing_alerts.arn
        }
        ]
    })
}

resource "aws_sns_topic_subscription" "email_subsciption" {

    provider = aws.nvirginia
    protocol = "email"
    endpoint = var.notification_email #replace with your email address
    depends_on = [ aws_sns_topic.billing_alerts ]
    topic_arn = aws_sns_topic.billing_alerts.arn
  
}





output "aws-region" {
    value = data.aws_region.current.name
  
}

output "sns-arn" {
    value = aws_sns_topic.billing_alerts.arn
  
}

*/