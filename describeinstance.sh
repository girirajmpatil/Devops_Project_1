#!/bin/bash
# list the desired instance_id filter by tag:name

aws ec2 describe-instances \
    --filters "Name=tag:Name,Values=Marynewinstance1" \
    --query "Reservations[*].Instances[*].[InstanceId]" \
    --output text
                 
