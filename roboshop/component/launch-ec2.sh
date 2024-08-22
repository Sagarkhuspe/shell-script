# This script creates EC2 Instaces & the associated DNS Records for the created servers

AMI_ID="ami-072983368f2a6eab5"
SGID="sg-03b4d0f3339fdc89c"               # Create your own Security Group that allows allows all and then add your SGID 
HOSTEDZONE_ID="Z08185973US3IG8LL97B8"     # User your private zone id
COMPONENT=$1
ENV=$2
COLOR="\e[35m"
NOCOLOR="\e[0m"

if [ -z $1 ] || [ -z $2 ] ; then
    echo -e "\e[31m   COMPONENT & ENV ARE NEEDED: \e[0m"
    echo -e "\e[36m \t\t Example Usage : \e[0m  bash launch-ec2 dev ratings"
    exit 1
fi 

create_ec2() {
    PRIVATE_IP=$(aws ec2 run-instances --image-id $AMI_ID --instance-type t3.micro --security-group-ids $SGID --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}-${ENV}}]" | jq .Instances[].PrivateIpAddress |sed -e 's/"//g')
    echo -e "___ $COLOR $1-$2 Server Created and here is the IP ADDRESS $PRIVATE_IP $NOCOLOR ___"