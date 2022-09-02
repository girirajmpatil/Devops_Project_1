#!/bin/bash
        echo "Building ec2 instance"

        aws ec2 run-instances \
        --image-id ami-068257025f72f470d \
        --count 1 \
        --instance-type t2.micro \
        --key-name eva-demo-kp \
        --security-group-ids sg-059130d3ed80d5324 \
        --subnet-id subnet-0e8281328042b2fa4 \
        --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=project-demo-2}]' \


        
