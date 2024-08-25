## AWS Security Best Practices with Terraform

Welcome to the AWS Security Best Practices repository! This project is focused on automating the deployment of critical security configurations across your AWS environment using Terraform. The goal is to ensure a robust security posture by implementing and enforcing best practices across various AWS services.

## Overview
## This repository contains Terraform scripts that automate the setup of essential AWS security services and configurations, including:

**AWS Security Hub**: A comprehensive view of your security state across your AWS accounts, detecting deviations from security best practices.

**AWS Macie**: A data security and privacy service that uses machine learning to discover, classify, and protect sensitive data in AWS.

**AWS CloudTrail**: Enables governance, compliance, and operational and risk auditing of your AWS account by logging and monitoring account activity.

**AWS GuardDuty**: A threat detection service that continuously monitors for malicious activity and unauthorized behavior to protect your AWS accounts and workloads.

**IAM Password Policies**: Enforces strong password policies for AWS Identity and Access Management (IAM) users to enhance account security.

**AWS Config Rules**: Implements security checks, such as ensuring IAM users and root accounts have MFA enabled, and monitors for security misconfigurations.

**AWS Organizations**: Automatically enables and configures security settings for new accounts within your AWS Organization.

# Prerequisites

**Before you begin, ensure that you have the following prerequisites:**

1.AWS account credentials (access key ID and secret access key).

2.Terraform installed on your local machine. You can download Terraform from the official website: https://www.terraform.io/downloads.html.

3.Basic knowledge of AWS services such as Security Hub, Config, Macie, Organizations, IAM, GuardDuty, CloudTrail.

4.Familiarity with the basics of Terraform, including how to write Terraform configuration files (.tf).

# Step 1: Clone the Repository

1. Open a terminal or command prompt on your local machine.

2. Clone the repository containing the Terraform configuration files

   `git clone https://github.com/TerraSafe.git`

3.  Change into the project directory

    `cd TerraSafe`

# Step 2: Configure AWS Credentials

1. Open the AWS Management Console in your web browser.
2. Navigate to the IAM service.
3. Create a new IAM user or use an existing one.
4. Assign the Admin permissions to the IAM user. 
5. Generate an access key ID and secret access key for the IAM user.

   `aws configure`
   
6. Enter the access key ID and secret access key when prompted, and optionally set the default region.

# Step 3: Initialize Terraform
1. Install the terraform binary from the terraform official website (For windows). Download terraform as per the Operating 
   system

   https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
   
3. Now copy and paste the binary in the project directory (For Windows OS only)
4. Run the following command to fix any syntax issue

   `terraform fmt`
5. Run the following command to initialize Terraform and download the required providers:

   `terraform init`
   
# Step 4: Review and Validate the Configuration

1. To preview the changes that Terraform will make, run:

   `terraform plan`
   
   Examine the output to ensure that the proposed infrastructure aligns with your expectations.

# Step 5: Deploy the Infrastructure

1. Deploy the infrastructure by running:

   `terraform apply --auto-approve`

2. Wait while Terraform provisions the infrastructure. This may take several minutes.
    
