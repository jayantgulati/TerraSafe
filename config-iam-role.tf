resource "aws_iam_role" "config_role" {

  name               = var.config_role
  assume_role_policy = data.aws_iam_policy_document.assume_role.json


}

data "aws_iam_policy_document" "assume_role" {

  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["config.amazonaws.com"]

    }
    actions = ["sts:AssumeRole"]
  }

}

resource "aws_iam_role_policy_attachment" "config_policy" {
  role       = aws_iam_role.config_role.name
  policy_arn = var.config_role_policy

}
