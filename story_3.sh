#!/bin/bash
#creating an ec2 using through awscli and passing user-data script file in user_data field.
#Defining variable and passing assigning the output of a awscli ec2 run-instances command

aws_instance="$(aws ec2 run-instances \
            --image-id ami-06489866022e12a14 \
            --count 1 \
            --instance-type t2.micro \
            --key-name Mary_18-ubuntu_keypair \
            --subnet-id subnet-0e8281328042b2fa4 \
            --security-group-ids sg-06bb607ae83ff084f \
            --user-data file://myuserdatascript1.sh \
            --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Marynewinstance1}]') \
            --region ap-south-1"

echo "created an ec2 instance and passed userdata as bootstrap script."

aws ec2 describe-instances \
    --filters "Name=tag:Name,Values=Marynewinstance1" \
    --query "Reservations[*].Instances[*].[InstanceId]" \
    --output text

#created_instance=$(sh describeinstance.sh)
#echo "ec2 instance is $created_instance"

#verify in EC2 management console if ec2 instance is created and connect to ec2 machine and verify it apachee server is installed on this machine.
               
