resource "aws_macie2_account" "macie" {


  finding_publishing_frequency = var.finding_publishing_frequency
  status                       = var.status

}

