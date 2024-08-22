#!/bin/bash
#aws s3 ls
# this creatrs ec2 instances

AMI_ID="ami-072983368f2a6eab5"
SGID="sg-0d7a60a25e15e3cde"
COMPONENT=$1
if [-z $1] ; then
echo -e "\e[31m component name is needed: \e[0m"
echo -e "\e[36m \t\t Example Usage : \e[0m  bash launch-ec2 dev ratings"
exit 1
fi

aws ec2 run-instances --image-id $AMI_ID \ --instance-type t2.micro \--security-group-ids $SGID \--tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}-${ENV}}]"