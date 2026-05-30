# !/bin/bash

AMI_ID="ami-0220d79f3f480ecf5"
ZONE_ID="Z08541483BXLDUSK4KJST"
DOMAIN_NAME="sujitha-daws.online"


for instance in $@
do
    echo "Launching instance: $instance"
    INSTANCE_ID=$(aws ec2 run-instances \
        --image-id ami-0220d79f3f480ecf5 \
        --instance-type t3.micro \
        --security-groups "default" "roboshop-$instance" \
        --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=roboshop-$instance}]" \
        --query 'Instances[0].InstanceId' \
        --output text
    )
    
    echo "Instance ID: $INSTANCE_ID"
done