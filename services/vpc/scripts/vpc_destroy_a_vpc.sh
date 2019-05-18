#!/bin/bash

# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/setup_env.sh

# create vpc using cloud formation.
# [a-zA-Z][-a-zA-Z]
vpc_stack_name="vpc-with-single-ec2-instance-update"
#validate template
delete_stack_cmd="aws cloudformation delete-stack --stack-name $vpc_stack_name"
exec $delete_stack_cmd

#verify the stack deployment



 