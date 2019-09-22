#!/bin/bash

# This is to provision the ec2 instance with security gruop 
# allowing ssh access to it.
# load environment setup scripts
export aws_home_dir=$HOME/working/cloud-computing/aws
source $aws_home_dir/utility_scripts/setup_env.sh

# create vpc using cloud formation.
# [a-zA-Z][-a-zA-Z]
vpc_stack_name="provision-dynamo-table"
deploy_stack_cmd="aws cloudformation deploy --stack-name $vpc_stack_name --template-file $aws_home_dir/services/Dynamo/create_dynamo_table_template.yaml"
exec $deploy_stack_cmd






 