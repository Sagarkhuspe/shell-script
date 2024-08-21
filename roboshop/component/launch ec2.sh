#!/bin/bash
# this creatrs ec2 instances

AMI_ID="ami-072983368f2a6eab5"
SGID="sg-0d7a60a25e15e3cde"
COMPONENT=$1


aws ec2 run-instances --image-id $AMI_ID \ --instance-type t2.micro \--security-group-ids $SGID \--tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}-${ENV}}]"