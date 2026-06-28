```bash
#!/bin/bash

###############################################################################
# Script Name : aws_resource_tracker.sh
# Description : Reports commonly used AWS resources in the current AWS account.
#
# Author      : Vishwa
# Version     : 1.0
# Date        : 28-Jun-2026
#
# Resources Covered:
#   - Amazon S3 Buckets
#   - Amazon EC2 Instances
#   - AWS Lambda Functions
#   - IAM Users
#
# Prerequisites:
#   - AWS CLI installed and configured
#   - jq installed
#
# Usage:
#   chmod +x aws_resource_tracker.sh
#   ./aws_resource_tracker.sh
###############################################################################

# Exit immediately if a command fails
set -e

# Print each command before executing it (Debug Mode)
set -x

###############################################################################
# Verify Required Tools
###############################################################################

command -v aws >/dev/null 2>&1 || {
    echo "ERROR: AWS CLI is not installed."
    exit 1
}

command -v jq >/dev/null 2>&1 || {
    echo "ERROR: jq is not installed."
    exit 1
}

###############################################################################
# List Amazon S3 Buckets
###############################################################################

echo
echo "==================== S3 Buckets ===================="

aws s3 ls

###############################################################################
# List Amazon EC2 Instances
###############################################################################

echo
echo "==================== EC2 Instances ===================="

aws ec2 describe-instances \
| jq -r '.Reservations[].Instances[] |
{
    InstanceId,
    InstanceType,
    State: .State.Name,
    PublicIP: .PublicIpAddress,
    Name: (.Tags[]? | select(.Key=="Name") | .Value)
}'

###############################################################################
# List AWS Lambda Functions
###############################################################################

echo
echo "==================== Lambda Functions ===================="

aws lambda list-functions \
| jq '.Functions[] | {
    FunctionName,
    Runtime,
    LastModified
}'

###############################################################################
# List IAM Users
###############################################################################

echo
echo "==================== IAM Users ===================="

aws iam list-users \
| jq '.Users[] | {
    UserName,
    Arn,
    CreateDate
}'

echo
echo "========== AWS Resource Report Completed =========="
```