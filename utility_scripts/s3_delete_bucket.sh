#!/bin/bash

# This is to provision the ec2 instance with security gruop 
# allowing ssh access to it.
# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/setup_env.sh

# create vpc using cloud formation.
# [a-zA-Z][-a-zA-Z]
vpc_stack_name="provision-s3-bucket"
deploy_stack_cmd="aws cloudformation delete-stack --stack-name $vpc_stack_name"
exec $deploy_stack_cmd



 