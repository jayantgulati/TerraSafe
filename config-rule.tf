resource "aws_config_config_rule" "mfa_enabled_rule" {

  name = var.mfa_enabled
  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_MFA_ENABLED"
  }

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  depends_on = [aws_config_configuration_recorder.config]

  # Set rule to be evaluated periodically
  maximum_execution_frequency = "TwentyFour_Hours"

  tags = {
    ManagedBy = var.config_rule_tag
  }

}