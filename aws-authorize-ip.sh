#!/bin/bash

AWS_REGION="us-west-2"
SECURITY_GROUP_ID="sg-xxxxxxxx"

if [ -z "$1" ]; then
  echo "Error: Enter a valid ip address..";
  exit 1;
fi

if [ -z "$2" ]; then
  echo "Error: Enter a valid port..";
  exit 1;
fi

printf "\n\nAuthorizing IP Address: $1:$2 to AWS Security Group ID: $SECURITY_GROUP_ID...\n\n";

aws ec2 authorize-security-group-ingress --region $AWS_REGION --group-id $SECURITY_GROUP_ID --protocol tcp --port $2 --cidr $1/32;
printf "DONE\n\n";
